/* -*-c++-*- */
/* osgEarth - Dynamic map generation toolkit for OpenSceneGraph
 * Copyright 2008-2013 Pelican Mapping
 * http://osgearth.org
 *
 * osgEarth is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>
 */
// Created FeatureSourceMDL for Incorporation of GeoPackage Model support within osgEarth
// 2018 Visual Awareness Technologies and Consulting Inc. St Petersburg FL

#include "MDLFeatureOptions"
#include <CDB_TileLib/CDB_Tile>

#include <osgEarth/Version>
#include <osgEarth/Registry>
#include <osgEarth/XmlUtils>
#include <osgEarth/FileUtils>
#include <osgEarthFeatures/FeatureSource>
#include <osgEarthFeatures/Filter>
#include <osgEarthFeatures/BufferFilter>
#include <osgEarthFeatures/ScaleFilter>
#include <osgEarthFeatures/OgrUtils>
#include <osgEarthUtil/TFS>
#include <osg/Notify>
#include <osgDB/FileNameUtils>
#include <osgDB/FileUtils>
#include <osgDB/Archive>
#include <list>
#include <vector>
#include <stdio.h>
#include <stdlib.h>

#ifdef _MSC_VER
#if _MSC_VER < 1800
#define round osg::round
#endif
#endif

#include <ogr_api.h>
#include <ogr_core.h>
#include <ogrsf_frmts.h>

#ifdef WIN32
#include <windows.h>
#endif

#define LC "[MDL FeatureSource] "

#if 0
#ifdef _DEBUG
#define _SAVE_OGR_OUTPUT
#endif
#endif

using namespace osgEarth;
using namespace osgEarth::Util;
using namespace osgEarth::Features;
using namespace osgEarth::Drivers;

#define OGR_SCOPED_LOCK GDAL_SCOPED_LOCK



static __int64 _s_MDL_FeatureID = 0;
/**
 * A FeatureSource that reads Common Database Layers
 * 
 */
class MDLFeatureSource : public FeatureSource
{
public:
    MDLFeatureSource(const MDLFeatureOptions& options ) :
      FeatureSource( options ),
      _options     ( options ),
	  _BE_Verbose(false),
	  _MDL_Edit_Support(false),
	  _ogr_file(NULL),
	  _MDL_geoTypical(false)
	{
    }

    /** Destruct the object, cleaning up and OGR handles. */
    virtual ~MDLFeatureSource()
    {               

		//nop
    }

    //override
	Status initialize(const osgDB::Options* dbOptions)
	{
		_dbOptions = dbOptions ? osg::clone(dbOptions) : 0L;

		//		osgEarth::CachePolicy::NO_CACHE.apply(_dbOptions.get());
				//ToDo when working reenable  the cache disable for development 

		FeatureProfile* Feature_Profile = NULL;

		const Profile * MDLFeatureProfile = NULL;
		if (_options.Edit_Support().isSet())
			_MDL_Edit_Support = _options.Edit_Support().value();

		if (_options.Verbose().isSet())
		{
			bool verbose = _options.Verbose().value();
			if (verbose)
				_BE_Verbose = true;
		}



		// Make sure the filename is set
		if (!_options.url().isSet())
		{
			OE_WARN << "GPKG Filename not set!" << std::endl;
		}
		else
		{
			_url = _options.url().value();
		}
		// Make sure the inst layer is set
		if (!_options.instlayer().isSet())
		{
			OE_WARN << "GPKG instance layer not set!" << std::endl;
		}
		else
		{
			_instlayer = _options.instlayer().value();
		}
		// Make sure the class layer is set
		if (!_options.clslayer().isSet())
		{
			OE_WARN << "GPKG class layer not set!" << std::endl;
		}
		else
		{
			_classlayer = _options.clslayer().value();
		}

		if (_options.geoTypical().isSet())
		{
			_MDL_geoTypical = _options.geoTypical().value();
		}

		_ogr_file = new OGR_File(_url, "GPKG");
		if (!_ogr_file)
		{
			OE_WARN << "Failed to create OGR_File class!" << std::endl;
			return Status::Error(Status::ResourceUnavailable, Stringify() << "Unable to create OGR_File class for \"" << _url << "\"");
		}

		if (_MDL_geoTypical)
		{
			_ogr_file->Set_GeoTyp_Process(true);
		}

		if (!_ogr_file->Open_Input())
		{
			OE_WARN << "Failed to open the file! " << _url << std::endl;
			return Status::Error(Status::ResourceUnavailable, Stringify() << "Unable to Open File \"" << _url << "\"");
		}

		if (!_ogr_file->Set_Inst_Layer(_instlayer))
		{
			OE_WARN << "Failed to open the instance layer!" << std::endl;
			return Status::Error(Status::ResourceUnavailable, Stringify() << "Unable to acquire layer \"" << _instlayer << "\" in \"" << _url << "\"");
		}

		if (!_ogr_file->Set_Class_Layer(_classlayer))
		{
			OE_WARN << "Failed to open the class layer!" << std::endl;
			return Status::Error(Status::ResourceUnavailable, Stringify() << "Unable to acquire layer \"" << _classlayer << "\" in \"" << _url << "\"");
		}

		OGRSpatialReference * ogr_srs = _ogr_file->Inst_Spatial_Reference();
		osg::ref_ptr<SpatialReference> srs = SpatialReference::createFromHandle((OGRSpatialReferenceH)ogr_srs, false);
		if (!srs.valid())
			return Status::Error(Status::ResourceUnavailable, Stringify() << "Unrecognized SRS found in \"" << _url << "\"");
		OGREnvelope env;
		if(!_ogr_file->Get_Inst_Envelope(env))
			return Status::Error(Status::ResourceUnavailable, Stringify() << "Invalid extent returned from \"" << _url << "\"");

		GeoExtent extent(srs.get(), env.MinX, env.MinY, env.MaxX, env.MaxY);
		if (!extent.isValid())
			return Status::Error(Status::ResourceUnavailable, Stringify() << "Invalid extent returned from \"" << _url << "\"");

		// Always a WGS84 unprojected lat/lon profile.
		if (!MDLFeatureProfile)
			MDLFeatureProfile = osgEarth::Profile::create(srs, env.MinX, env.MinY, env.MaxX, env.MaxY, 1U, 1U);

		Feature_Profile = new FeatureProfile(MDLFeatureProfile->getExtent());
		Feature_Profile->setTiled(true);
		// Should work for now 
		Feature_Profile->setProfile(MDLFeatureProfile);
		bool errorset = false;
		std::string Errormsg = "";


		if (Feature_Profile)
		{
			setFeatureProfile(Feature_Profile);
		}
		else
		{
			return Status::Error(Status::ResourceUnavailable, "MDLFeatureSource Failed to establish a valid feature profile");
		}
		_ogr_file->Load_Class();

		return Status::OK();
    }

    FeatureCursor* createFeatureCursor( const Symbology::Query& query )
    {
        FeatureCursor* result = 0L;
		_cur_Feature_Cnt = 0;
		// Make sure the root directory is set
		if (!_options.url().isSet())
		{
			OE_WARN << "CDB root directory not set!" << std::endl;
			return result;
		}
		const osgEarth::TileKey key = query.tileKey().get();
		const GeoExtent key_extent = key.getExtent();

		FeatureList features;
		bool dataOK = false;
		bool fileOk = getFeatures(features);
		if (fileOk)
		{
			if (_BE_Verbose)
			{
				printf("File %s has %d Features\n", _url.c_str(), (int)features.size());
			}
			OE_INFO << LC << "Features " << features.size() << _url << std::endl;
			dataOK = true;
		}

		result = dataOK ? new FeatureListCursor( features ) : 0L;

        return result;
    }

    /**
    * Gets the Feature with the given FID
    * @returns
    *     The Feature with the given FID or NULL if not found.
    */
    virtual Feature* getFeature( FeatureID fid )
    {
        return 0;
    }

    virtual bool isWritable() const
    {
        return false;
    }

    virtual const FeatureSchema& getSchema() const
    {
        //TODO:  Populate the schema from the DescribeFeatureType call
        return _schema;
    }

    virtual osgEarth::Symbology::Geometry::Type getGeometryType() const
    {
        return Geometry::TYPE_UNKNOWN;
    }

private:


	bool getFeatures(FeatureList& features)
	{
		// find the right driver for the given mime type
		OGR_SCOPED_LOCK;
		// find the right driver for the given mime type
#ifdef _DEBUG
		int fubar = 0;
#endif
		std::string TileNameStr;
		if (_MDL_Edit_Support)
		{
			TileNameStr = osgDB::getSimpleFileName(_url);
			TileNameStr = osgDB::getNameLessExtension(TileNameStr);
		}

		const SpatialReference* srs = SpatialReference::create("EPSG:4326");

		osg::ref_ptr<osgDB::Options> localoptions = _dbOptions->cloneOptions();

		bool done = false;
		while (!done)
		{
			OGRFeature * feat_handle;
			std::string FullModelName;
			std::string ArchiveFileName;
			std::string ModelKeyName;
			bool Model_in_Archive = false;
			bool valid_model = true;
			feat_handle = _ogr_file->Next_Valid_Feature(ModelKeyName, FullModelName);
			if (feat_handle == NULL)
			{
				done = true;
				break;
			}

			double ZoffsetPos = 0.0;

#if OSGEARTH_VERSION_GREATER_OR_EQUAL (2,7,0)
			osg::ref_ptr<Feature> f = OgrUtils::createFeature((OGRFeatureH)feat_handle, getFeatureProfile());
#else
			osg::ref_ptr<Feature> f = OgrUtils::createFeature(feat_handle, srs);
#endif
			f->setFID(_s_MDL_FeatureID);
			++_s_MDL_FeatureID;

			f->set("osge_basename", ModelKeyName);
			if (_MDL_Edit_Support)
			{
				std::stringstream format_stream;
				format_stream << TileNameStr << "_" << std::setfill('0')
					<< std::setw(5) << abs(_cur_Feature_Cnt);

				f->set("name", ModelKeyName);
				std::string transformName = "xform_" + format_stream.str();
				f->set("transformname", transformName);
				std::string mtypevalue;
				f->set("modeltype", mtypevalue);
				f->set("tilename", _url);

#if 0
				CDB_Model_Runtime_Class FeatureClass = mainTile->Current_Feature_Class_Data();
				f->set("bsr", FeatureClass.bsr);
				f->set("bbw", FeatureClass.bbw);
				f->set("bbl", FeatureClass.bbl);
				f->set("bbh", FeatureClass.bbh);
				f->set("zoffset", ZoffsetPos);
#endif
			}
			++_cur_Feature_Cnt;
			if (valid_model)
			{
				//Ok we have everthing needed to load this model at this lod
				//Set the atribution to tell osgearth to load the model
					//GeoTypical or CDB database in development path
				f->set("osge_modelname", FullModelName);
#ifdef _DEBUG
				OE_DEBUG << LC << "Model File " << FullModelName << " Set to Load" << std::endl;
#endif
			}
			else
			{
			}
			if (f.valid() && !isBlacklisted(f->getFID()))
			{
//test
				if (valid_model)
				{
					features.push_back(f.release());
				}
				else
					f.release();
			}
			OGR_F_Destroy(feat_handle);
		}
		return true;
	}



	bool validate_name(std::string &filename)
	{
#ifdef _WIN32
		DWORD ftyp = ::GetFileAttributes(filename.c_str());
		if (ftyp == INVALID_FILE_ATTRIBUTES)
		{
			DWORD error = ::GetLastError();
			if (error == ERROR_FILE_NOT_FOUND || error == ERROR_PATH_NOT_FOUND)
			{
				OE_DEBUG << LC << "Model File " << filename << " not found" << std::endl;
				return false;
			}
		}
		return true;
#else
		int ftyp = ::access(filename.c_str(), F_OK);
		if (ftyp == 0)
		{
			return  true;
		}
		else
		{
			return false;
		}
#endif
	}


	const MDLFeatureOptions         _options;
    FeatureSchema                   _schema;
	bool							_BE_Verbose;
	bool							_MDL_Edit_Support;
	osg::ref_ptr<CacheBin>          _cacheBin;
    osg::ref_ptr<osgDB::Options>    _dbOptions;
	int								_CDBLodNum;
	std::string						_url;
	std::string						_instlayer;
	std::string						_classlayer;
	OGR_File *						_ogr_file;
	bool							_MDL_geoTypical;
	std::string						_cacheDir;
	std::string						_dataSet;
	int								_cur_Feature_Cnt;
};


class MDLFeatureSourceFactory : public FeatureSourceDriver
{
public:
    MDLFeatureSourceFactory()
    {
        supportsExtension( "osgearth_feature_mdl", "GPKG feature driver for osgEarth" );
    }

    virtual const char* className()
    {
        return "GPKG Feature Reader";
    }

    virtual ReadResult readObject(const std::string& file_name, const Options* options) const
    {
        if ( !acceptsExtension(osgDB::getLowerCaseFileExtension( file_name )))
            return ReadResult::FILE_NOT_HANDLED;

        return ReadResult( new MDLFeatureSource( getFeatureSourceOptions(options) ) );
    }
};

REGISTER_OSGPLUGIN(osgearth_feature_mdl, MDLFeatureSourceFactory)


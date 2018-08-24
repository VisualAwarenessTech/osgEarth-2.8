INCLUDE_DIRECTORIES( ${GDAL_INCLUDE_DIR} )

SET(TARGET_SRC FeatureSourceMDL.cpp)
SET(TARGET_H MDLFeatureOptions)
SET(TARGET_COMMON_LIBRARIES ${TARGET_COMMON_LIBRARIES} osgEarthFeatures osgEarthSymbology)

SET(TARGET_LIBRARIES_VARS GDAL_LIBRARY )

SETUP_PLUGIN(osgearth_feature_mdl)


# to install public driver includes:
SET(LIB_NAME feature_mdl)
SET(LIB_PUBLIC_HEADERS MDLFeatureOptions)
INCLUDE(ModuleInstallOsgEarthDriverIncludes OPTIONAL)


# Install script for directory: D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/OSGEARTH")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Debug/osgEarthFeaturesd.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Release/osgEarthFeatures.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/MinSizeRel/osgEarthFeaturess.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/RelWithDebInfo/osgEarthFeaturesrd.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Debug/osgEarthFeaturesd.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Release/osgEarthFeatures.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/MinSizeRel/osgEarthFeaturess.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/RelWithDebInfo/osgEarthFeaturesrd.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/osgEarthFeatures" TYPE FILE FILES
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/AltitudeFilter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/BufferFilter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/BuildGeometryFilter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/BuildTextFilter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/CentroidFilter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/Common"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/ConvertTypeFilter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/CropFilter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/ExtrudeGeometryFilter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/Feature"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/FeatureCursor"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/FeatureDisplayLayout"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/FeatureDrawSet"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/FeatureIndex"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/FeatureListSource"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/FeatureModelGraph"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/FeatureModelSource"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/FeatureSource"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/FeatureSourceIndexNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/FeatureTileSource"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/Filter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/FilterContext"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/GeometryCompiler"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/GeometryUtils"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/LabelSource"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/MVT"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/OgrUtils"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/OptimizerHints"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/PolygonizeLines"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/ResampleFilter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/ScaleFilter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/Session"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/ScatterFilter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/Script"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/ScriptEngine"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/ScriptFilter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/SubstituteModelFilter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/TessellateOperator"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/TextSymbolizer"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/TransformFilter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthFeatures/VirtualFeatureSource"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")


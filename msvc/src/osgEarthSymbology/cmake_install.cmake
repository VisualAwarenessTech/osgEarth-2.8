# Install script for directory: D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology

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
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Debug/osgEarthSymbologyd.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Release/osgEarthSymbology.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/MinSizeRel/osgEarthSymbologys.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/RelWithDebInfo/osgEarthSymbologyrd.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Debug/osgEarthSymbologyd.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Release/osgEarthSymbology.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/MinSizeRel/osgEarthSymbologys.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/RelWithDebInfo/osgEarthSymbologyrd.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/osgEarthSymbology" TYPE FILE FILES
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/AGG.h"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/AltitudeSymbol"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/BBoxSymbol"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/BillboardResource"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/BillboardSymbol"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/Common"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/Color"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/CoverageSymbol"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/CssUtils"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/Expression"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/ExtrusionSymbol"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/Fill"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/Geometry"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/GeometryFactory"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/GEOS"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/GeometryRasterizer"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/IconResource"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/IconSymbol"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/InstanceResource"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/InstanceSymbol"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/LineSymbol"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/MarkerResource"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/MarkerSymbol"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/MeshConsolidator"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/MeshFlattener"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/MeshSubdivider"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/ModelResource"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/ModelSymbol"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/PointSymbol"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/PolygonSymbol"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/Query"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/RenderSymbol"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/Resource"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/ResourceCache"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/ResourceLibrary"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/Skins"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/StencilVolumeNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/Stroke"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/Style"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/StyleSelector"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/StyleSheet"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/Symbol"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/Tags"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSymbology/TextSymbol"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")


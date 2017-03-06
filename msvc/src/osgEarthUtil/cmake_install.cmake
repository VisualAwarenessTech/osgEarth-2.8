# Install script for directory: D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil

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
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Debug/osgEarthUtild.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Release/osgEarthUtil.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/MinSizeRel/osgEarthUtils.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/RelWithDebInfo/osgEarthUtilrd.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Debug/osgEarthUtild.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Release/osgEarthUtil.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/MinSizeRel/osgEarthUtils.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/RelWithDebInfo/osgEarthUtilrd.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/resources/shaders" TYPE FILE FILES
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/ContourMap.vert.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/ContourMap.frag.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/Fog.vert.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/Fog.frag.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/Graticule.vert.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/Graticule.frag.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/LogDepthBuffer.vert.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/LogDepthBuffer.VertOnly.vert.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/LogDepthBuffer.frag.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/Shadowing.vert.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/Shadowing.frag.glsl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/osgEarthUtil" TYPE FILE FILES
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/ActivityMonitorTool"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/AnnotationEvents"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/AutoClipPlaneHandler"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/ArcGIS"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/AtlasBuilder"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/Common"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/Controls"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/ContourMap"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/ClampCallback"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/DataScanner"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/EarthManipulator"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/Ephemeris"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/ExampleResources"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/Export"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/FeatureQueryTool"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/Fog"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/Formatter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/GeodeticGraticule"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/GraticuleExtension"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/GraticuleNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/GraticuleOptions"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/GraticuleTerrainEffect"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/HTM"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/LatLongFormatter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/LineOfSight"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/LinearLineOfSight"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/LODBlending"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/LogarithmicDepthBuffer"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/MeasureTool"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/MGRSFormatter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/MGRSGraticule"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/MouseCoordsTool"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/ObjectLocator"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/Ocean"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/PolyhedralLineOfSight"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/RadialLineOfSight"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/RTTPicker"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/Shaders"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/Shadowing"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/SimplexNoise"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/SimplePager"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/Sky"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/SpatialData"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/StarData"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/TerrainProfile"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/TileIndex"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/TileIndexBuilder"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/TFS"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/TFSPackager"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/TMS"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/TMSBackFiller"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/TMSPackager"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/UTMGraticule"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/VerticalScale"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/WFS"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/WMS"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/BrightnessContrastColorFilter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/CMYKColorFilter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/GammaColorFilter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/GLSLColorFilter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/HSLColorFilter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/RGBColorFilter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/ChromaKeyColorFilter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthUtil/NightColorFilter"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")


# Install script for directory: D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/sky_simple

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
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE MODULE FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Debug/osgdb_osgearth_sky_simpled.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE MODULE FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Release/osgdb_osgearth_sky_simple.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE MODULE FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/MinSizeRel/osgdb_osgearth_sky_simples.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE MODULE FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/RelWithDebInfo/osgdb_osgearth_sky_simplerd.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/resources/shaders" TYPE FILE FILES
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/sky_simple/SimpleSky.Atmosphere.frag.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/sky_simple/SimpleSky.Atmosphere.vert.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/sky_simple/SimpleSky.Ground.ONeil.frag.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/sky_simple/SimpleSky.Ground.ONeil.vert.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/sky_simple/SimpleSky.Moon.frag.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/sky_simple/SimpleSky.Moon.vert.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/sky_simple/SimpleSky.Stars.frag.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/sky_simple/SimpleSky.Stars.vert.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/sky_simple/SimpleSky.Stars.GLES.frag.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/sky_simple/SimpleSky.Stars.GLES.vert.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/sky_simple/SimpleSky.Sun.frag.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/sky_simple/SimpleSky.Sun.vert.glsl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/osgEarthDrivers/sky_simple" TYPE FILE FILES "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/sky_simple/SimpleSkyOptions")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")


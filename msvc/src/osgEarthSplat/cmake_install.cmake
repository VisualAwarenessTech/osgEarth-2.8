# Install script for directory: D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat

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
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Debug/osgEarthSplatd.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Release/osgEarthSplat.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/MinSizeRel/osgEarthSplats.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/RelWithDebInfo/osgEarthSplatrd.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Debug/osgEarthSplatd.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Release/osgEarthSplat.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/MinSizeRel/osgEarthSplats.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/RelWithDebInfo/osgEarthSplatrd.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/resources/shaders" TYPE FILE FILES
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/Splat.types.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/Splat.Noise.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/Splat.vert.model.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/Splat.vert.view.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/Splat.frag.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/Splat.frag.common.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/Splat.util.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/LandCover.TCS.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/LandCover.TES.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/LandCover.GS.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/LandCover.FS.glsl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/osgEarthSplat" TYPE FILE FILES
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/Coverage"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/Export"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/LandCover"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/LandCoverTerrainEffect"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/LandCoverTilePatchCallback"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/LandUseTileSource"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/NoiseTextureFactory"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/SplatCoverageLegend"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/SplatCatalog"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/SplatExtension"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/SplatOptions"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/SplatShaders"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/SplatTerrainEffect"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/Surface"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthSplat/Zone"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")


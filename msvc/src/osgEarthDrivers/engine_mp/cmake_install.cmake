# Install script for directory: D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_mp

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
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE MODULE FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Debug/osgdb_osgearth_engine_mpd.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE MODULE FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Release/osgdb_osgearth_engine_mp.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE MODULE FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/MinSizeRel/osgdb_osgearth_engine_mps.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE MODULE FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/RelWithDebInfo/osgdb_osgearth_engine_mprd.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/resources/shaders" TYPE FILE FILES
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_mp/MPEngine.vert.model.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_mp/MPEngine.vert.view.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_mp/MPEngine.frag.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_mp/MPEngine.NormalMap.vert.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_mp/MPEngine.NormalMap.frag.glsl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/osgEarthDrivers/engine_mp" TYPE FILE FILES
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_mp/Common"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_mp/DynamicLODScaleCallback"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_mp/HeightFieldCache"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_mp/FileLocationCallback"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_mp/KeyNodeFactory"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_mp/MPGeometry"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_mp/MPShaders"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_mp/MPTerrainEngineNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_mp/MPTerrainEngineOptions"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_mp/SingleKeyNodeFactory"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_mp/TerrainNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_mp/TileGroup"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_mp/TileModel"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_mp/TileModelCompiler"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_mp/TileNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_mp/TileNodeRegistry"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_mp/TileModelFactory"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_mp/TilePagedLOD"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")


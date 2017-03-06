# Install script for directory: D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex

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
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE MODULE FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Debug/osgdb_osgearth_engine_rexd.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE MODULE FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Release/osgdb_osgearth_engine_rex.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE MODULE FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/MinSizeRel/osgdb_osgearth_engine_rexs.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE MODULE FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/RelWithDebInfo/osgdb_osgearth_engine_rexrd.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/resources/shaders" TYPE FILE FILES
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/RexEngine.vert.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/RexEngine.vert.view.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/RexEngine.tcs.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/RexEngine.tes.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/RexEngine.gs.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/RexEngine.frag.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/RexEngine.NormalMap.vert.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/RexEngine.NormalMap.frag.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/RexEngine.Morphing.vert.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/RexEngine.SDK.vert.glsl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/osgEarthDrivers/engine_rex" TYPE FILE FILES
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/Common"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/GeometryPool"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/Shaders"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/RexTerrainEngineNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/RexTerrainEngineOptions"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/LoadTileData"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/MaskGenerator"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/MPTexture"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/RenderBindings"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/SurfaceNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/TileDrawable"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/EngineContext"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/TileNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/TileNodeRegistry"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/Loader"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/Unloader"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthDrivers/engine_rex/SelectionInfo"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")


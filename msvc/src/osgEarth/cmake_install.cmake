# Install script for directory: D:/Development/op3d_active/osgearth-2.8/src/osgEarth

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
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Debug/osgEarthd.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Release/osgEarth.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/MinSizeRel/osgEarths.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/RelWithDebInfo/osgEarthrd.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Debug/osgEarthd.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Release/osgEarth.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/MinSizeRel/osgEarths.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/RelWithDebInfo/osgEarthrd.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/resources/shaders" TYPE FILE FILES
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/AlphaEffect.frag.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/DepthOffset.vert.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Draping.vert.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Draping.frag.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/GPUClamping.vert.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/GPUClamping.vert.lib.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/GPUClamping.frag.glsl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Instancing.vert.glsl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/osgEarth" TYPE FILE FILES
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/AlphaEffect"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/AutoScale"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Bounds"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Cache"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/CacheEstimator"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/CacheBin"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/CachePolicy"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/CacheSeed"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Capabilities"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Clamping"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/ClampableNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/ClampingTechnique"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/ColorFilter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Common"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/CompositeTileSource"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Config"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Containers"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Cube"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/CullingUtils"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/DateTime"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/DateTimeRange"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/DepthOffset"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/DPLineSegmentIntersector"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/DrapeableNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/DrapingCullSet"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/DrapingTechnique"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/DrawInstanced"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/ECEF"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/ElevationLayer"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/ElevationLOD"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/ElevationQuery"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Export"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Extension"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/FadeEffect"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/FileUtils"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/GeoCommon"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/GeoData"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Geoid"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/GeoMath"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/GeoTransform"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/GeometryClamper"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/GLSLChunker"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/HeightFieldUtils"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Horizon"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/HTTPClient"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/ImageLayer"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/ImageMosaic"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/ImageToHeightFieldConverter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/ImageUtils"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/IOTypes"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/JsonUtils"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Layer"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/LineFunctor"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Locators"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/LocalTangentPlane"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Map"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/MapCallback"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/MapFrame"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/MapInfo"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/MapModelChange"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/MapNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/MapNodeObserver"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/MapNodeOptions"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/MapOptions"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/MaskLayer"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/MaskNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/MaskSource"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Memory"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/MemCache"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/ModelLayer"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/ModelSource"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/NativeProgramAdapter"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/NodeUtils"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Notify"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/optional"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/ObjectIndex"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/OverlayDecorator"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/OverlayNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/PhongLightingEffect"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Picker"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/IntersectionPicker"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/PrimitiveIntersector"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Profile"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Profiler"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Progress"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/QuadTree"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Random"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Registry"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/ResourceReleaser"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Revisioning"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/ScreenSpaceLayout"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Shaders"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/ShaderFactory"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/ShaderGenerator"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/ShaderLoader"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/ShaderUtils"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Shadowing"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/SharedSARepo"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/SpatialReference"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/StateSetCache"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/StateSetLOD"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Status"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/StringUtils"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/TaskService"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Terrain"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/TerrainEffect"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/TerrainLayer"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/TerrainOptions"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/TerrainEngineNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/TerrainEngineRequirements"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/TerrainTileModel"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/TerrainTileModelFactory"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/TerrainTileNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/TileKeyDataStore"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/TilePatchCallback"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Tessellator"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/TextureCompositor"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/TileKey"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/TileHandler"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/TileSource"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/TileVisitor"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/TimeControl"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/TraversalData"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/ThreadingUtils"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Units"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/URI"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Utils"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Version"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/VerticalDatum"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/Viewpoint"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/VirtualProgram"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarth/XmlUtils"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")


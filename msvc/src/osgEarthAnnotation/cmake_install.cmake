# Install script for directory: D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation

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
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Debug/osgEarthAnnotationd.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Release/osgEarthAnnotation.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/MinSizeRel/osgEarthAnnotations.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/RelWithDebInfo/osgEarthAnnotationrd.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Debug/osgEarthAnnotationd.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/Release/osgEarthAnnotation.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/MinSizeRel/osgEarthAnnotations.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Development/op3d_active/osgearth-2.8/msvc/lib/RelWithDebInfo/osgEarthAnnotationrd.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/osgEarthAnnotation" TYPE FILE FILES
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/AnnotationSettings"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/AnnotationEditing"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/AnnotationExtension"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/AnnotationData"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/AnnotationNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/AnnotationRegistry"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/AnnotationUtils"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/BboxDrawable"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/CircleNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/Common"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/Decoration"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/Draggers"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/EllipseNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/Export"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/FeatureNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/FeatureEditing"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/GeoPositionNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/GeoPositionNodeAutoScaler"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/LocalGeometryNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/HighlightDecoration"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/ImageOverlay"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/ImageOverlayEditor"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/LabelNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/ModelNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/PlaceNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/RectangleNode"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/ScaleDecoration"
    "D:/Development/op3d_active/osgearth-2.8/src/osgEarthAnnotation/TrackNode"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")


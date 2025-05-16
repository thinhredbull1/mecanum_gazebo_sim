# Install script for directory: /home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/thinh/nexus_4wd_mecanum_simulator/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/restricted_layer/msg" TYPE FILE FILES "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/Data.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/restricted_layer/msg" TYPE FILE FILES "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/DataArray.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/restricted_layer/cmake" TYPE FILE FILES "/home/thinh/nexus_4wd_mecanum_simulator/build/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/catkin_generated/installspace/restricted_layer-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/thinh/nexus_4wd_mecanum_simulator/devel/include/restricted_layer")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/thinh/nexus_4wd_mecanum_simulator/devel/share/roseus/ros/restricted_layer")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/thinh/nexus_4wd_mecanum_simulator/devel/share/common-lisp/ros/restricted_layer")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/thinh/nexus_4wd_mecanum_simulator/devel/share/gennodejs/ros/restricted_layer")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/thinh/nexus_4wd_mecanum_simulator/devel/lib/python3/dist-packages/restricted_layer")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/thinh/nexus_4wd_mecanum_simulator/devel/lib/python3/dist-packages/restricted_layer")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/thinh/nexus_4wd_mecanum_simulator/build/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/catkin_generated/installspace/restricted_layer.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/restricted_layer/cmake" TYPE FILE FILES "/home/thinh/nexus_4wd_mecanum_simulator/build/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/catkin_generated/installspace/restricted_layer-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/restricted_layer/cmake" TYPE FILE FILES
    "/home/thinh/nexus_4wd_mecanum_simulator/build/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/catkin_generated/installspace/restricted_layerConfig.cmake"
    "/home/thinh/nexus_4wd_mecanum_simulator/build/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/catkin_generated/installspace/restricted_layerConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/restricted_layer" TYPE FILE FILES "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/package.xml")
endif()


# Install script for directory: /home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/std_stamped_msgs/srv" TYPE FILE FILES "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/srv/StringService.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/std_stamped_msgs/msg" TYPE FILE FILES
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/BoolStamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/ByteStamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/ByteMultiArrayStamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/CharStamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/ColorRGBAStamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/DurationStamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/EmptyStamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/Float32Stamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/Float32MultiArrayStamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/Float64Stamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/Float64MultiArrayStamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/Int16Stamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/Int16MultiArrayStamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/Int32Stamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/Int32MultiArrayStamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/Int64Stamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/Int64MultiArrayStamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/Int8Stamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/Int8MultiArrayStamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/MultiArrayLayout.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/StringStamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/UInt16Stamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/UInt16MultiArrayStamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/UInt32Stamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/UInt32MultiArrayStamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/UInt64Stamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/UInt64MultiArrayStamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/UInt8Stamped.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/msg/UInt8MultiArrayStamped.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/std_stamped_msgs/action" TYPE FILE FILES "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/action/String.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/std_stamped_msgs/msg" TYPE FILE FILES
    "/home/thinh/nexus_4wd_mecanum_simulator/devel/share/std_stamped_msgs/msg/StringAction.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/devel/share/std_stamped_msgs/msg/StringActionGoal.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/devel/share/std_stamped_msgs/msg/StringActionResult.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/devel/share/std_stamped_msgs/msg/StringActionFeedback.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/devel/share/std_stamped_msgs/msg/StringGoal.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/devel/share/std_stamped_msgs/msg/StringResult.msg"
    "/home/thinh/nexus_4wd_mecanum_simulator/devel/share/std_stamped_msgs/msg/StringFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/std_stamped_msgs/cmake" TYPE FILE FILES "/home/thinh/nexus_4wd_mecanum_simulator/build/std_stamped_msgs/catkin_generated/installspace/std_stamped_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/thinh/nexus_4wd_mecanum_simulator/devel/include/std_stamped_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/thinh/nexus_4wd_mecanum_simulator/devel/share/roseus/ros/std_stamped_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/thinh/nexus_4wd_mecanum_simulator/devel/share/common-lisp/ros/std_stamped_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/thinh/nexus_4wd_mecanum_simulator/devel/share/gennodejs/ros/std_stamped_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/thinh/nexus_4wd_mecanum_simulator/devel/lib/python3/dist-packages/std_stamped_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/thinh/nexus_4wd_mecanum_simulator/devel/lib/python3/dist-packages/std_stamped_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/thinh/nexus_4wd_mecanum_simulator/build/std_stamped_msgs/catkin_generated/installspace/std_stamped_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/std_stamped_msgs/cmake" TYPE FILE FILES "/home/thinh/nexus_4wd_mecanum_simulator/build/std_stamped_msgs/catkin_generated/installspace/std_stamped_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/std_stamped_msgs/cmake" TYPE FILE FILES
    "/home/thinh/nexus_4wd_mecanum_simulator/build/std_stamped_msgs/catkin_generated/installspace/std_stamped_msgsConfig.cmake"
    "/home/thinh/nexus_4wd_mecanum_simulator/build/std_stamped_msgs/catkin_generated/installspace/std_stamped_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/std_stamped_msgs" TYPE FILE FILES "/home/thinh/nexus_4wd_mecanum_simulator/src/std_stamped_msgs/package.xml")
endif()


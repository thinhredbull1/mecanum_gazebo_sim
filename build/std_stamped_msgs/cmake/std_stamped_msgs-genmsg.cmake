# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "std_stamped_msgs: 37 messages, 1 services")

set(MSG_I_FLAGS "-Istd_stamped_msgs:/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg;-Istd_stamped_msgs:/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(std_stamped_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/BoolStamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/BoolStamped.msg" ""
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ByteStamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ByteStamped.msg" ""
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ByteMultiArrayStamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ByteMultiArrayStamped.msg" "std_stamped_msgs/MultiArrayLayout:std_stamped_msgs/MultiArrayDimension"
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/CharStamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/CharStamped.msg" ""
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ColorRGBAStamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ColorRGBAStamped.msg" ""
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/DurationStamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/DurationStamped.msg" ""
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/EmptyStamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/EmptyStamped.msg" ""
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float32Stamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float32Stamped.msg" ""
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float32MultiArrayStamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float32MultiArrayStamped.msg" "std_stamped_msgs/MultiArrayLayout:std_stamped_msgs/MultiArrayDimension"
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float64Stamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float64Stamped.msg" ""
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float64MultiArrayStamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float64MultiArrayStamped.msg" "std_stamped_msgs/MultiArrayLayout:std_stamped_msgs/MultiArrayDimension"
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int16Stamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int16Stamped.msg" ""
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int16MultiArrayStamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int16MultiArrayStamped.msg" "std_stamped_msgs/MultiArrayLayout:std_stamped_msgs/MultiArrayDimension"
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int32Stamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int32Stamped.msg" ""
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int32MultiArrayStamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int32MultiArrayStamped.msg" "std_stamped_msgs/MultiArrayLayout:std_stamped_msgs/MultiArrayDimension"
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int64Stamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int64Stamped.msg" ""
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int64MultiArrayStamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int64MultiArrayStamped.msg" "std_stamped_msgs/MultiArrayLayout:std_stamped_msgs/MultiArrayDimension"
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int8Stamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int8Stamped.msg" ""
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int8MultiArrayStamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int8MultiArrayStamped.msg" "std_stamped_msgs/MultiArrayLayout:std_stamped_msgs/MultiArrayDimension"
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg" ""
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg" "std_stamped_msgs/MultiArrayDimension"
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/StringStamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/StringStamped.msg" ""
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt16Stamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt16Stamped.msg" ""
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt16MultiArrayStamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt16MultiArrayStamped.msg" "std_stamped_msgs/MultiArrayLayout:std_stamped_msgs/MultiArrayDimension"
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt32Stamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt32Stamped.msg" ""
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt32MultiArrayStamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt32MultiArrayStamped.msg" "std_stamped_msgs/MultiArrayLayout:std_stamped_msgs/MultiArrayDimension"
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt64Stamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt64Stamped.msg" ""
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt64MultiArrayStamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt64MultiArrayStamped.msg" "std_stamped_msgs/MultiArrayLayout:std_stamped_msgs/MultiArrayDimension"
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt8Stamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt8Stamped.msg" ""
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt8MultiArrayStamped.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt8MultiArrayStamped.msg" "std_stamped_msgs/MultiArrayLayout:std_stamped_msgs/MultiArrayDimension"
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringAction.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringAction.msg" "std_stamped_msgs/StringActionGoal:std_stamped_msgs/StringActionResult:std_stamped_msgs/StringFeedback:std_stamped_msgs/StringResult:std_stamped_msgs/StringGoal:std_stamped_msgs/StringActionFeedback:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionGoal.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionGoal.msg" "std_msgs/Header:actionlib_msgs/GoalID:std_stamped_msgs/StringGoal"
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionResult.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionResult.msg" "actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID:std_stamped_msgs/StringResult"
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionFeedback.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionFeedback.msg" "actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID:std_stamped_msgs/StringFeedback"
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringGoal.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringGoal.msg" ""
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringResult.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringResult.msg" ""
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringFeedback.msg" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringFeedback.msg" ""
)

get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/srv/StringService.srv" NAME_WE)
add_custom_target(_std_stamped_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "std_stamped_msgs" "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/srv/StringService.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/BoolStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ByteStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ByteMultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/CharStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ColorRGBAStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/DurationStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/EmptyStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float32Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float32MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float64Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float64MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int16Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int16MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int32Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int32MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int64Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int64MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int8Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int8MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt16Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt16MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt32Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt32MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt64Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt64MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt8Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt8MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringAction.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionGoal.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionResult.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringFeedback.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringResult.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringGoal.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)

### Generating Services
_generate_srv_cpp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/srv/StringService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
)

### Generating Module File
_generate_module_cpp(std_stamped_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(std_stamped_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(std_stamped_msgs_generate_messages std_stamped_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/BoolStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ByteStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ByteMultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/CharStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ColorRGBAStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/DurationStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/EmptyStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float32Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float32MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float64Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float64MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int16Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int16MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int32Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int32MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int64Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int64MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int8Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int8MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/StringStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt16Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt16MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt32Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt32MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt64Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt64MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt8Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt8MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringAction.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionGoal.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionResult.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionFeedback.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringGoal.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringResult.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringFeedback.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/srv/StringService.srv" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_cpp _std_stamped_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(std_stamped_msgs_gencpp)
add_dependencies(std_stamped_msgs_gencpp std_stamped_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS std_stamped_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/BoolStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ByteStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ByteMultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/CharStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ColorRGBAStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/DurationStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/EmptyStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float32Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float32MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float64Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float64MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int16Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int16MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int32Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int32MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int64Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int64MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int8Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int8MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt16Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt16MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt32Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt32MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt64Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt64MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt8Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt8MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringAction.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionGoal.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionResult.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringFeedback.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringResult.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringGoal.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)

### Generating Services
_generate_srv_eus(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/srv/StringService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
)

### Generating Module File
_generate_module_eus(std_stamped_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(std_stamped_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(std_stamped_msgs_generate_messages std_stamped_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/BoolStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ByteStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ByteMultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/CharStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ColorRGBAStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/DurationStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/EmptyStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float32Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float32MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float64Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float64MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int16Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int16MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int32Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int32MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int64Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int64MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int8Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int8MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/StringStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt16Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt16MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt32Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt32MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt64Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt64MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt8Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt8MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringAction.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionGoal.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionResult.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionFeedback.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringGoal.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringResult.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringFeedback.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/srv/StringService.srv" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_eus _std_stamped_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(std_stamped_msgs_geneus)
add_dependencies(std_stamped_msgs_geneus std_stamped_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS std_stamped_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/BoolStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ByteStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ByteMultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/CharStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ColorRGBAStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/DurationStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/EmptyStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float32Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float32MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float64Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float64MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int16Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int16MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int32Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int32MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int64Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int64MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int8Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int8MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt16Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt16MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt32Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt32MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt64Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt64MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt8Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt8MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringAction.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionGoal.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionResult.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringFeedback.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringResult.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringGoal.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)

### Generating Services
_generate_srv_lisp(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/srv/StringService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
)

### Generating Module File
_generate_module_lisp(std_stamped_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(std_stamped_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(std_stamped_msgs_generate_messages std_stamped_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/BoolStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ByteStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ByteMultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/CharStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ColorRGBAStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/DurationStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/EmptyStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float32Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float32MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float64Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float64MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int16Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int16MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int32Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int32MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int64Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int64MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int8Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int8MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/StringStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt16Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt16MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt32Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt32MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt64Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt64MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt8Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt8MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringAction.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionGoal.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionResult.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionFeedback.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringGoal.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringResult.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringFeedback.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/srv/StringService.srv" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_lisp _std_stamped_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(std_stamped_msgs_genlisp)
add_dependencies(std_stamped_msgs_genlisp std_stamped_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS std_stamped_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/BoolStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ByteStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ByteMultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/CharStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ColorRGBAStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/DurationStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/EmptyStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float32Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float32MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float64Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float64MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int16Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int16MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int32Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int32MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int64Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int64MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int8Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int8MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt16Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt16MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt32Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt32MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt64Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt64MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt8Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt8MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringAction.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionGoal.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionResult.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringFeedback.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringResult.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringGoal.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)

### Generating Services
_generate_srv_nodejs(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/srv/StringService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
)

### Generating Module File
_generate_module_nodejs(std_stamped_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(std_stamped_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(std_stamped_msgs_generate_messages std_stamped_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/BoolStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ByteStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ByteMultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/CharStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ColorRGBAStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/DurationStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/EmptyStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float32Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float32MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float64Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float64MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int16Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int16MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int32Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int32MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int64Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int64MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int8Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int8MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/StringStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt16Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt16MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt32Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt32MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt64Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt64MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt8Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt8MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringAction.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionGoal.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionResult.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionFeedback.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringGoal.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringResult.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringFeedback.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/srv/StringService.srv" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_nodejs _std_stamped_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(std_stamped_msgs_gennodejs)
add_dependencies(std_stamped_msgs_gennodejs std_stamped_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS std_stamped_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/BoolStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ByteStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ByteMultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/CharStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ColorRGBAStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/DurationStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/EmptyStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float32Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float32MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float64Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float64MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int16Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int16MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int32Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int32MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int64Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int64MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int8Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int8MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt16Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt16MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt32Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt32MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt64Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt64MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt8Stamped.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt8MultiArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringAction.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionGoal.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionResult.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringFeedback.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringResult.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringGoal.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)
_generate_msg_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)

### Generating Services
_generate_srv_py(std_stamped_msgs
  "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/srv/StringService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
)

### Generating Module File
_generate_module_py(std_stamped_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(std_stamped_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(std_stamped_msgs_generate_messages std_stamped_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/BoolStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ByteStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ByteMultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/CharStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/ColorRGBAStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/DurationStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/EmptyStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float32Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float32MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float64Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Float64MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int16Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int16MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int32Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int32MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int64Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int64MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int8Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/Int8MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayDimension.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/MultiArrayLayout.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/StringStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt16Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt16MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt32Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt32MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt64Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt64MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt8Stamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/msg/UInt8MultiArrayStamped.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringAction.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionGoal.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionResult.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringActionFeedback.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringGoal.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringResult.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/devel/share/std_stamped_msgs/msg/StringFeedback.msg" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/std_stamped_msgs/srv/StringService.srv" NAME_WE)
add_dependencies(std_stamped_msgs_generate_messages_py _std_stamped_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(std_stamped_msgs_genpy)
add_dependencies(std_stamped_msgs_genpy std_stamped_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS std_stamped_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/std_stamped_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(std_stamped_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/std_stamped_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(std_stamped_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/std_stamped_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(std_stamped_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/std_stamped_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(std_stamped_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/std_stamped_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(std_stamped_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()

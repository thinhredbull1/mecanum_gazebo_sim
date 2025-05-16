# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "restricted_layer: 2 messages, 0 services")

set(MSG_I_FLAGS "-Irestricted_layer:/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(restricted_layer_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/Data.msg" NAME_WE)
add_custom_target(_restricted_layer_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "restricted_layer" "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/Data.msg" ""
)

get_filename_component(_filename "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/DataArray.msg" NAME_WE)
add_custom_target(_restricted_layer_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "restricted_layer" "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/DataArray.msg" "restricted_layer/Data"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(restricted_layer
  "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/restricted_layer
)
_generate_msg_cpp(restricted_layer
  "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/DataArray.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/Data.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/restricted_layer
)

### Generating Services

### Generating Module File
_generate_module_cpp(restricted_layer
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/restricted_layer
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(restricted_layer_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(restricted_layer_generate_messages restricted_layer_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/Data.msg" NAME_WE)
add_dependencies(restricted_layer_generate_messages_cpp _restricted_layer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/DataArray.msg" NAME_WE)
add_dependencies(restricted_layer_generate_messages_cpp _restricted_layer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(restricted_layer_gencpp)
add_dependencies(restricted_layer_gencpp restricted_layer_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS restricted_layer_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(restricted_layer
  "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/restricted_layer
)
_generate_msg_eus(restricted_layer
  "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/DataArray.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/Data.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/restricted_layer
)

### Generating Services

### Generating Module File
_generate_module_eus(restricted_layer
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/restricted_layer
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(restricted_layer_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(restricted_layer_generate_messages restricted_layer_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/Data.msg" NAME_WE)
add_dependencies(restricted_layer_generate_messages_eus _restricted_layer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/DataArray.msg" NAME_WE)
add_dependencies(restricted_layer_generate_messages_eus _restricted_layer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(restricted_layer_geneus)
add_dependencies(restricted_layer_geneus restricted_layer_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS restricted_layer_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(restricted_layer
  "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/restricted_layer
)
_generate_msg_lisp(restricted_layer
  "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/DataArray.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/Data.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/restricted_layer
)

### Generating Services

### Generating Module File
_generate_module_lisp(restricted_layer
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/restricted_layer
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(restricted_layer_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(restricted_layer_generate_messages restricted_layer_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/Data.msg" NAME_WE)
add_dependencies(restricted_layer_generate_messages_lisp _restricted_layer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/DataArray.msg" NAME_WE)
add_dependencies(restricted_layer_generate_messages_lisp _restricted_layer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(restricted_layer_genlisp)
add_dependencies(restricted_layer_genlisp restricted_layer_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS restricted_layer_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(restricted_layer
  "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/restricted_layer
)
_generate_msg_nodejs(restricted_layer
  "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/DataArray.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/Data.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/restricted_layer
)

### Generating Services

### Generating Module File
_generate_module_nodejs(restricted_layer
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/restricted_layer
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(restricted_layer_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(restricted_layer_generate_messages restricted_layer_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/Data.msg" NAME_WE)
add_dependencies(restricted_layer_generate_messages_nodejs _restricted_layer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/DataArray.msg" NAME_WE)
add_dependencies(restricted_layer_generate_messages_nodejs _restricted_layer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(restricted_layer_gennodejs)
add_dependencies(restricted_layer_gennodejs restricted_layer_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS restricted_layer_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(restricted_layer
  "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/restricted_layer
)
_generate_msg_py(restricted_layer
  "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/DataArray.msg"
  "${MSG_I_FLAGS}"
  "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/Data.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/restricted_layer
)

### Generating Services

### Generating Module File
_generate_module_py(restricted_layer
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/restricted_layer
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(restricted_layer_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(restricted_layer_generate_messages restricted_layer_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/Data.msg" NAME_WE)
add_dependencies(restricted_layer_generate_messages_py _restricted_layer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thinh/nexus_4wd_mecanum_simulator/src/rviz_package/restrict_area_rviz/restrict_area_rviz/RestrictAreaPLugin/restricted_layer/msg/DataArray.msg" NAME_WE)
add_dependencies(restricted_layer_generate_messages_py _restricted_layer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(restricted_layer_genpy)
add_dependencies(restricted_layer_genpy restricted_layer_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS restricted_layer_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/restricted_layer)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/restricted_layer
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(restricted_layer_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/restricted_layer)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/restricted_layer
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(restricted_layer_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/restricted_layer)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/restricted_layer
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(restricted_layer_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/restricted_layer)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/restricted_layer
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(restricted_layer_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/restricted_layer)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/restricted_layer\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/restricted_layer
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(restricted_layer_generate_messages_py std_msgs_generate_messages_py)
endif()

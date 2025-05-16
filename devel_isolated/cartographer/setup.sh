#!/usr/bin/env sh
# generated from catkin.builder Python module

# remember type of shell if not already set
if [ -z "$CATKIN_SHELL" ]; then
  CATKIN_SHELL=sh
fi
. "/home/thinh/nexus_4wd_mecanum_simulator/devel_isolated/als_ros/setup.$CATKIN_SHELL"

# detect if running on Darwin platform
_UNAME=`uname -s`
IS_DARWIN=0
if [ "$_UNAME" = "Darwin" ]; then
  IS_DARWIN=1
fi

# Prepend to the environment
export CMAKE_PREFIX_PATH="/home/thinh/nexus_4wd_mecanum_simulator/devel_isolated/cartographer:$CMAKE_PREFIX_PATH"
if [ $IS_DARWIN -eq 0 ]; then
  export LD_LIBRARY_PATH="/home/thinh/nexus_4wd_mecanum_simulator/devel_isolated/cartographer/lib:/home/thinh/nexus_4wd_mecanum_simulator/devel_isolated/cartographer/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH"
else
  export DYLD_LIBRARY_PATH="/home/thinh/nexus_4wd_mecanum_simulator/devel_isolated/cartographer/lib:/home/thinh/nexus_4wd_mecanum_simulator/devel_isolated/cartographer/lib/x86_64-linux-gnu:$DYLD_LIBRARY_PATH"
fi
export PATH="/home/thinh/nexus_4wd_mecanum_simulator/devel_isolated/cartographer/bin:$PATH"
export PKG_CONFIG_PATH="/home/thinh/nexus_4wd_mecanum_simulator/devel_isolated/cartographer/lib/pkgconfig:/home/thinh/nexus_4wd_mecanum_simulator/devel_isolated/cartographer/lib/x86_64-linux-gnu/pkgconfig:$PKG_CONFIG_PATH"
export PYTHONPATH="/home/thinh/nexus_4wd_mecanum_simulator/devel_isolated/cartographer/lib/python3/dist-packages:$PYTHONPATH"

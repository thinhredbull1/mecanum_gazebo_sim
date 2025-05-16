#!/bin/bash
workspace_path=$(pwd)
ros_distro=noetic
os_name=ubuntu
os_version=focal

for pkg in $(catkin list); do
    cd $workspace_path/src/$pkg
    echo "Generating Debian package for $pkg..."
    bloom-generate rosdebian --os-name $os_name --os-version $os_version --ros-distro $ros_distro
done
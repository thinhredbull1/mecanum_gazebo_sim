#!/bin/bash
ros_distro=noetic
os_name=ubuntu
os_version=focal
bloom-generate rosdebian --os-name $os_name --os-version $os_version --ros-distro $ros_distro
fakeroot debian/rules binary
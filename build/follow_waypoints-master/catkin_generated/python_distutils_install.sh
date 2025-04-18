#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/follow_waypoints-master"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/thinh/project_all/mecanum/mecanum_gazebo_sim/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/thinh/project_all/mecanum/mecanum_gazebo_sim/install/lib/python3/dist-packages:/home/thinh/project_all/mecanum/mecanum_gazebo_sim/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/thinh/project_all/mecanum/mecanum_gazebo_sim/build" \
    "/usr/bin/python3" \
    "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/src/follow_waypoints-master/setup.py" \
     \
    build --build-base "/home/thinh/project_all/mecanum/mecanum_gazebo_sim/build/follow_waypoints-master" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/thinh/project_all/mecanum/mecanum_gazebo_sim/install" --install-scripts="/home/thinh/project_all/mecanum/mecanum_gazebo_sim/install/bin"

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

echo_and_run cd "/home/thinh/nexus_4wd_mecanum_simulator/src/follow_waypoints-master"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/thinh/nexus_4wd_mecanum_simulator/install_isolated/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/thinh/nexus_4wd_mecanum_simulator/install_isolated/lib/python3/dist-packages:/home/thinh/nexus_4wd_mecanum_simulator/build_isolated/follow_waypoints/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/thinh/nexus_4wd_mecanum_simulator/build_isolated/follow_waypoints" \
    "/usr/bin/python3" \
    "/home/thinh/nexus_4wd_mecanum_simulator/src/follow_waypoints-master/setup.py" \
     \
    build --build-base "/home/thinh/nexus_4wd_mecanum_simulator/build_isolated/follow_waypoints" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/thinh/nexus_4wd_mecanum_simulator/install_isolated" --install-scripts="/home/thinh/nexus_4wd_mecanum_simulator/install_isolated/bin"

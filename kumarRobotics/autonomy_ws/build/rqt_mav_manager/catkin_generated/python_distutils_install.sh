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

echo_and_run cd "/home/root/kumarRobotics/autonomy_ws/src/kr_mav_control/rqt_mav_manager"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/root/kumarRobotics/autonomy_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/root/kumarRobotics/autonomy_ws/install/lib/python2.7/dist-packages:/home/root/kumarRobotics/autonomy_ws/build/rqt_mav_manager/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/root/kumarRobotics/autonomy_ws/build/rqt_mav_manager" \
    "/usr/bin/python2" \
    "/home/root/kumarRobotics/autonomy_ws/src/kr_mav_control/rqt_mav_manager/setup.py" \
     \
    build --build-base "/home/root/kumarRobotics/autonomy_ws/build/rqt_mav_manager" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/root/kumarRobotics/autonomy_ws/install" --install-scripts="/home/root/kumarRobotics/autonomy_ws/install/bin"

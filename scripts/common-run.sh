#
# Copyright 2014 myOS Group. All rights reserved.
#

PARAM=x$1

#if [ ${PARAM} = "xnew" ] ; then
#    echo "===== android update ================================="
#    android update project -p . -s --target 1
if [ ${PARAM} = "xuninstall" ] ; then
    echo "===== uninstall ================================="
    ant uninstall
#elif [ ${PARAM} = "xrestart" ] ; then
#    echo "===== Restarting adb server ==========================="
#    adb kill-server
#    adb start-server
#    adb devices
fi

ndk-build || exit
ant debug quit install

ant run

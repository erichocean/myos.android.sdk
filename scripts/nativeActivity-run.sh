#
# Copyright 2014 myOS Group. All rights reserved.
#

PARAM=x$1

if [ ${PARAM} = "xuninstall" ] ; then
    echo "============================== uninstall ================================="
    ant uninstall
fi

echo "============================ Native activity run ================================="

adb shell input keyevent 3
android update project -p . -s --target 1;
ant debug install
ant run

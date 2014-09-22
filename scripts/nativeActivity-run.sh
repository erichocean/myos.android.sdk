#
# Copyright 2014 myOS Group. All rights reserved.
#

PARAM=x$1

if [ ${PARAM} = "xuninstall" ] ; then
    echo "============================== uninstall ================================="
    ant uninstall
fi

echo "============================ Native activity run ================================="

#ndk-build || exit
adb shell input keyevent 3
ant debug install

#quit

ant run

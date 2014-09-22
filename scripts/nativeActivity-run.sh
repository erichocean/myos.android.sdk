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
ant debug quit install

ant run

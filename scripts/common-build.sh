#
# Copyright 2014 myOS Group. All rights reserved.
#

if [ ${TARGET} = "All" ]; then
    export TARGET=myOSApplication
    source ${MYOS_PATH}/android/sdk/scripts/common-make.sh
    export TARGET=NativeActivity
    source ${MYOS_PATH}/android/sdk/scripts/common-make.sh
    TARGET=All
else
    export TARGET=${TARGET}
    source ${MYOS_PATH}/android/sdk/scripts/common-make.sh
fi

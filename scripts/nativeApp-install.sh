#
# Copyright 2014 myOS Group. All rights reserved.
#

APPLICATION_PATH=$(pwd)
if [ ${TARGET} = "All" ]; then
    export TARGET=myOSApplication
    source ${MYOS_PATH}/android/sdk/scripts/common-make.sh
    export TARGET=NativeActivity
    source ${MYOS_PATH}/android/sdk/scripts/common-make.sh
    TARGET=All
else
    source ${MYOS_PATH}/android/sdk/scripts/build.sh
cd ${APPLICATION_PATH}
    export TARGET=${TARGET}
    source ${MYOS_PATH}/android/sdk/scripts/common-make.sh
fi



#!/bin/bash
#
# Query for the size of specified path (mount point) continuously and display the size.
#

TARGET_PATH=${1:-/dev}
TARGET_FILENAME=${2:-data}
DELAY_SECONDS=${3:-0.1}
i=1

TARGET_FULLPATH="$TARGET_PATH/$TARGET_FILENAME"
echo "---> Checking $TARGET_FULLPATH"


#
# pick up the last serial number, if any
#
if [ -f "$TARGET_FULLPATH" ]
then
    last=`tail -n 1 $TARGET_FULLPATH | awk '{ print $1 }'`
    let "i=last+1"
fi


#
# display the volume size, continuously
#
while :
do
    size=`df -h --output=avail $TARGET_PATH | tail -n 1`
    if [ $? == 0 ]
    then
        echo "$i :" $size        | tee -a $TARGET_FULLPATH
    else
        echo "$i :      " $size  | tee -a $TARGET_FULLPATH
    fi

    sleep $DELAY_SECONDS
    let "i++"
done

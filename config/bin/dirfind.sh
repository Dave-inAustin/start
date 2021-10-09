#!/bin/bash
#function dirfind [filename]
#
# Returns directory location of the first matching filename.
#
list=`find . -name "$1" -print0`

if [[ list = "" ]] ; then
   exit 1
fi

echo $list | { read firstMatch rest
   echo ${firstMatch%/*}
}

exit 0


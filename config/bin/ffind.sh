#!/bin/bash

searchPath="."
verboseMode=0

function usage  {
   cat <<EOF
Usage: $0 [-d] [-v]
   -d    search the local driver directories, defined by \$driverSourcePaths
   -v    verbose mode, expand the search path 
EOF
   exit 0
}

while getopts "dv?" opt
do
   case $opt in
   d) searchPath=$driverSourcePaths ;;

   v) verboseMode=1 ;;

   ?) usage ;;
   esac
done
shift $((OPTIND-1))

if [ $verboseMode -ne 0 ] ; then
   echo Search Path: $searchPath
   echo
fi

find $searchPath -type f -print0 | xargs -0 egrep -i "$*" 2>/dev/null

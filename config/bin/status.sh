#!/usr/bin/env bash

directory=$HOME/Documents/personal/status
fname=$directory/status.txt
addLine=0
display=0
curTime=`date +%m/%d/%y,%H:%M`

function usage  {
    cat <<EOF
Usage: $0 [-d] [-l]
   -d   Display contents
   -l   Add a line
   -?   help
EOF
    exit 0
}

directory=$dlatest
clean=0
buildOnly=0

while getopts "dl?h" opt
do
   case $opt in
   l) addLine=1 ;;
   d) display=1 ;;
   ? | h) usage ;;
esac
done
shift $((OPTIND-1))

if [ $display -eq 1 ] ; then
   echo "--------------------------------------------------------------------"
   cat $fname
   echo "--------------------------------------------------------------------"
   exit 0
   
fi


if [ $addLine -eq 1 ] ; then
   echo "--------------------------------------------------------------------" >> $fname
fi

echo [$curTime]: $* >> $fname


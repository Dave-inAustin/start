#!/bin/bash
#
# enscript <filename>*
#
# Usage: enscript prints ASCII file(s) to a postscript printer (2 pages/side).
#

if [[ $1 == "-1" ]] ; then
   pageAlign="-R"
   shift
else
   pageAlign="-2r"
fi

if [[ $# == 1 ]] ; then
   echo "1 file."
else
   echo "$# files."
fi

for i in $*; do
#enscript -2rGE -j -T3 $i
   c:/gnu/enscript/enscript "$pageAlign" -GE -j -T3 $i
done

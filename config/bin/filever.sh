#!/bin/bash
#
# filever.sh <filename>*
#
# Usage: Shows the fileversion for a DLL or EXE.
#

for i in $* ; do
   echo -n "$i: "
   sigcheck -q -n $i
done


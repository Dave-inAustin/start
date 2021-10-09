#!/bin/bash
#
# cdiffer <filename>*
#
# Usage: Compares the checked out files to the depot.
#

for i in `checkout.sh $*` ; do
   echo $i
   differ.sh $i
done

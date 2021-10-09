#!/bin/bash
#######################################################################
#
# expandTab <files>
#
# expandTab simply removes tabs out of the file list and replaces
# them with spaces.
#
# 
#######################################################################

for i in $* ; do

   cat $i > $i.bkp.$$
   cat $i.bkp.$$ | expand -3 > $i
   rm $i.bkp.$$

   done




#!sh
#
# cdiffer <filename>*
#
# Usage: Compares the checked out files to the depot.
#

for i in `checkedin.sh` ; do
   echo $i
   differ.sh $i
done

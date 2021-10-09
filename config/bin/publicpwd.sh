#!sh
rootDir=`cygpath -aw . | cut -c1-2`
#echo $rootDir
#echo "--------------"

if [[ $rootDir == "\\\\" ]]; then
   echo `cygpath -aw .`
   exit 0
fi

baseDir=$( net use | grep -i $rootDir | cut -c24- | cut -f1 -d " ")
#echo $baseDir
#echo "--------------"

pwdDir=`cygpath -aw .` 
pwdDir2=${pwdDir##*:}
#echo $pwdDir2
#echo "--------------"


echo -n $baseDir
echo $pwdDir2 

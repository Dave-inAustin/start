#!/bin/sh

echo "helo"

bkpFiles=${HOME}/bkp/oldFiles
echo $bkpFiles
mkdir -p $bkpFiles

pushd $HOME
cp -fp .bash* .git* .vim* .gvim* .profile .mint* $bkpFiles

if [ -d ${HOME}/.ssh ] ; then
   cp -Rp ${HOME}/.ssh $bkpFiles
fi


if [ -d ${HOME}/bin ] ; then
   cp -Rp ${HOME}/bin $bkpFiles
fi

popd


if [ -d /usr/share/vim ] ; then
   cp config/usr/share/vim/apple.vim /usr/share/vim
fi

cp -Rp config/bin config/bin2 $HOME


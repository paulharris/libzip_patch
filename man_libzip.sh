#! /bin/sh
cd "$( dirname $0 )"/install/man
export MANPATH=`pwd`
echo $MANPATH
ls man3
man $1

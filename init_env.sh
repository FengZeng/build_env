#!/bin/bash
DST=`cygpath -w /usr/local` 
if [ ! -d /usr/local ]; then
    CurPath=`pwd` 
    SRC=`cygpath -w $CurPath/local`
    echo $DST
    echo $SRC
    cmd "/C .\local\link.bat "$DST" "$SRC""
else
    echo "$DST already exist, delete it first!"
fi

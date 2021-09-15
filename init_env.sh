#!/bin/bash
if [ ! -d /usr/local ]; then
    CurPath=`pwd`
    DST=`cygpath -w /usr/local` 
    SRC=`cygpath -w $CurPath/local`
    echo $DST
    echo $SRC
    cmd "/C .\local\link.bat "$DST" "$SRC""
fi

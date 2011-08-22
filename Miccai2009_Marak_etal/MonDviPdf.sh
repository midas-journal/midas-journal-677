#!/bin/sh
if(test $# -le 0)
    then
    echo "If faut donner un fichier .dvi à convertir !!!"
    exit 0
fi
dvipdf -dAutoFilterColorImages=false -dAutoFilterGrayImages=false -dColorImageFilter=/FlateEncode -dGrayImageFilter=/FlateEncode -dMonoImageFilter=/FlateEncode -sPAPERSIZE=a4 $1
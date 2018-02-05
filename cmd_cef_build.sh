#!/bin/bash

for FILENAME in *.bz2; do
    #echo ${FILENAME%%.bz2*}
    CEF_NAME=${FILENAME%%.bz2*}
    echo "####################################"
    echo "Extracting the $CEF_NAME using bzip2"
    echo "####################################"
    break
done

bzip2 -cd $CEF_NAME.bz2 | tar xvf - 

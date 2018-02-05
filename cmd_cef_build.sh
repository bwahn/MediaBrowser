#!/bin/bash

for FILENAME in *.bz2; do
    #echo ${FILENAME%%.bz2*}
    CEF_NAME=${FILENAME%%.tar.bz2}
    echo "####################################"
    echo "Extracting the $CEF_NAME using bzip2"
    echo "####################################"
    break
done

bzip2 -cd $CEF_NAME.tar.bz2 | tar xvf - 

echo "####################################"
echo " Build the CEF lib"
echo "####################################"
cd $CEF_NAME
cmake .

echo "####################################"
echo " Build dll wrapper"
echo "####################################"
cd libcef_dll_wrapper
make
#!/bin/bash

if [ ! -d "serial" ] 
then
    echo "Directory serial DOES NOT exists." 
    exit 9999 # die with error code 9999
fi

if [ ! -d "threaded" ] 
then
    echo "Directory threaded DOES NOT exists." 
    exit 9999 # die with error code 9999
fi

FILE=CMakeLists.txt
if [ ! -f "$FILE" ]; then
    echo "$FILE does not exist. Make sure to include valid CMakeLists.txt file"
    exit 9999 # diel with error code 9999
fi

if [ -d "threaded" ] 
then
    echo "Build directory aleady exists. Forcing removal of current build directory for rebuilding source" 
    rm -rf build
fi

if ! mkdir build; then
    echo "build directory could not be created. Exiting with exit code $1"
    exit $1
fi

if ! cd build; then
    echo "Could not enter build directory. Exiting with exit code $1"
    exit $1
fi

if ! cmake ..; then
    echo "Could not run cmake. Exiting with exit code $1"
    exit $1
fi

make

cd ..


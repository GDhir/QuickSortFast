#!/bin/bash

if [ ! -d "build" ] 
then
    echo "Directory build DOES NOT exist. Make sure to build the source before running tests" 
    exit 9999 # die with error code 9999
fi

if ! cd build/threaded/tests; then
    echo "Could not enter build/threaded/tests directory. Exiting with exit code $1"
    exit $1
fi

if ! ./testThreaded; then
    echo "Could not run tests. Exiting with exit code $1"
    exit $1
fi

cd ../../..


#!/bin/bash -e

cmake -H. -Bb -DCMAKE_POSITION_INDEPENDENT_CODE=$1
cmake --build b --clean-first

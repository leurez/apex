#!/bin/bash

if [ -d "build" ]; then
    echo "文件夹已经存在，如果需要从头build请先删除build文件夹（rm -rf build）"
else
    mkdir -p build
fi

set -ex
cd build && cmake .. && make -j

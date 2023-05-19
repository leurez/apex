#!/bin/bash

directory="./"

# 删除目录下除了CMakeLists.txt和*.sh外的所有文件和文件夹
find "$directory" -type f -not -name "CMakeLists.txt" -not -name "*.sh" -exec rm -rf {} +
find "$directory" -type d -not -name "CMakeLists.txt" -not -name "*.sh" -exec rm -rf {} +

cmake_minimum_required(VERSION 3.12)
project(apex-3rd)

# 编译选项
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")

# thirdparty
set(THIRDPARTY_DIR ${CMAKE_CURRENT_SOURCE_DIR}/thirdparty)
## 添加一个自定义目标来下载和构建 Protobuf
include(ExternalProject)

ExternalProject_Add(
    protobuf_external
    PREFIX ${THIRDPARTY_DIR}/protobuf
    GIT_REPOSITORY https://github.com/protocolbuffers/protobuf
    GIT_TAG main
    UPDATE_COMMAND ""
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${THIRDPARTY_DIR}/protobuf-install
)


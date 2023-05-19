cmake_minimum_required(VERSION 3.12)
project(apex-3rd)

# 编译选项
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")

set(THIRD_PARTY_INSTALL ${CMAKE_CURRENT_SOURCE_DIR}/install)
message(STATUS "3rd install path: ${THIRD_PARTY_INSTALL}")

## 添加一个自定义目标来下载和构建 Protobuf
include(ExternalProject)

## gRPC

ExternalProject_Add(
    grpc_external
    PREFIX grpc
    GIT_REPOSITORY https://github.com/grpc/grpc
    GIT_TAG master
    UPDATE_COMMAND ""
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${THIRD_PARTY_INSTALL}
)


## Protobuf
#ExternalProject_Add(
#    protobuf_external
#    PREFIX protobuf
#    GIT_REPOSITORY https://github.com/protocolbuffers/protobuf
#    GIT_TAG main
#    UPDATE_COMMAND ""
#    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${THIRD_PARTY_INSTALL}
#)
#

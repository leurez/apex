cmake_minimum_required(VERSION 3.12)
project(apex)

# 编译选项
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")

# thirdparty
set(THIRDPARTY_DIR ${CMAKE_CURRENT_SOURCE_DIR}/thirdparty/install)
list(APPEND CMAKE_PREFIX_PATH ${THIRDPARTY_DIR})
## 添加一个自定义目标来下载和构建 Protobuf


## 等待PB编译完成后设置相应环境变量
#ExternalProject_Get_Property(protobuf_external SOURCE_DIR)
#set(PROTOBUF_INCLUDE_DIRS ${SOURCE_DIR}/src)
#set(PROTOBUF_LIBRARIES ${THIRDPARTY_DIR}/protobuf-install/lib/libprotobuf.a)
#set(Protobuf_DIR ${THIRDPARTY_DIR}/thirdparty/protobuf-install/lib64/cmake/protobuf)
#message(STATUS "Protobuf_DIR: ${Protobuf_DIR}")

# 添加可执行文件
add_executable(cli-example main.cc)

# 添加源文件目录
add_subdirectory(src)

# 添加IDL目录
add_subdirectory(IDL)

# 链接库
target_link_libraries(cli-example client)

# 添加源文件
aux_source_directory(client cli_src)

add_library(apex ${cli_src})

cmake_minimum_required(VERSION 3.10)
project(MuxerPcm)

set(CMAKE_CXX_STANDARD 11)


aux_source_directory(src/MuxerPcm/ FILE)
aux_source_directory(src/Startup/ FILE)

ADD_EXECUTABLE(MuxerPcm ${FILE})
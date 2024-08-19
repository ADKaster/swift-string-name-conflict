cmake_minimum_required(VERSION 3.30)

project(Test LANGUAGES Swift CXX)

add_library(swift_lib SHARED Sources/MyLib/MyLib.swift)
add_library(cxx_lib INTERFACE)
target_include_directories(cxx_lib INTERFACE Sources/AK)
target_link_libraries(swift_lib PUBLIC cxx_lib)
target_compile_options(swift_lib PUBLIC -cxx-interoperability-mode=default)

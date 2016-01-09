cmake_minimum_required(VERSION 2.8.7) # travis default. Real old ..

project(sample CXX)
include(check-supported-flags.cmake) # calculate EXTRA_WARNINGS

set(LANG_FLAGS "-std=c++11 -fno-exceptions -fno-rtti")
set(WARN_FLAGS "-Wall -Wextra -pedantic -Weffc++")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${LANG_FLAGS} ${WARN_FLAGS} ${EXTRA_WARNINGS}")

add_executable(sample sample.cpp)
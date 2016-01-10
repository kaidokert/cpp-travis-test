cmake_minimum_required(VERSION 2.8.7) # Travis default

project(sample CXX)

include(cmake/coverage.cmake)
include(cmake/check-supported-flags.cmake)

check_supported_flags(EXTRA_WARNINGS)

set(LANG_FLAGS "-std=c++11 -fno-exceptions -fno-rtti")
set(WARN_FLAGS "-Wall -Wextra -pedantic -Weffc++")
if(MSVC)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /Wall /WX")
else()
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${LANG_FLAGS} ${WARN_FLAGS} ${EXTRA_WARNINGS}")
endif()

set(SRC sample.cpp)
add_executable(sample ${SRC})
add_executable_coverage(coverage_sample ${SRC})

include(CheckCXXSourceCompiles)
include(CMakeCheckCompilerFlagCommonPatterns)

include(compiler-flags.cmake)

CHECK_COMPILER_FLAG_COMMON_PATTERNS(_CheckCXXCompilerFlag_COMMON_PATTERNS)
foreach(flag ${GCC_EXTRA_WARNINGS} ${CLANG_EXTRA_WARNINGS})
  set(CMAKE_REQUIRED_DEFINITIONS "-W${flag}")
  CHECK_CXX_SOURCE_COMPILES("int main() { return 0; }" flag-${flag}-result
    FAIL_REGEX ${_CheckCXXCompilerFlag_COMMON_PATTERNS})
  if(${flag-${flag}-result})
    list(APPEND CXX_ALL_WARNINGS "${flag}")
  endif()
endforeach()

# flatten the list
string (REPLACE ";" " -W" EXTRA_WARNINGS "${CXX_ALL_WARNINGS}")

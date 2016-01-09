# cpp-travis-test

[![Travis Status](https://travis-ci.org/kaidokert/cpp-travis-test.svg?branch=master)](https://travis-ci.org/kaidokert/cpp-travis-test) [![Appveyor Status](https://ci.appveyor.com/api/projects/status/6k3s500lbwlrc03e?svg=true)](https://ci.appveyor.com/project/kaidokert/cpp-travis-test) [![Coveralls Status](https://coveralls.io/repos/kaidokert/cpp-travis-test/badge.svg?branch=master&service=github)](https://coveralls.io/github/kaidokert/cpp-travis-test)

Skeleton project to build 3 useless lines of C++ code on all easily available continuous integration systems with maximum warnings and code coverage reporting on.

Travis : Ubuntu/Precise with gcc-4.9, gcc-5 and clang, MacOS with Xcode/clang

Appveyor: builds with VS2013 and VS2015, 32/64bit versions

Coverage: gcc/gcov with coveralls.io reporting

Includes a Makefile with every possible warning turned on, and Visual studio project hand coded to be as short as possible with all warnings on

Tried to keep all configuration files as concise and DRY as possible for maintainability

### TODO
* Add CMake as an option
* Add arm-none-eabi-gcc
* Build -O0, Os, O3 variants on gcc/clang
* add ccache

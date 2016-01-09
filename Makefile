include compiler-flags.mk

CPPFLAGS += -std=c++11 -fno-exceptions -fno-rtti
CPPFLAGS += -Wall -Wextra -pedantic -Weffc++
CPPFLAGS += $(CPP_ALL_WARNINGS)
COV_FLAGS += --coverage -ftest-coverage -fprofile-arcs -lgcov 

clang%: CPPFLAGS+= $(CLANG_EXTRA_WARNINGS)
g++%: CPPFLAGS+= $(GCC_ALL_WARNINGS)

TARGETS=$(CXX)_sample

COV_TARGET=coverage_sample

$(COV_TARGET): CPPFLAGS+=$(COV_FLAGS) 


$(TARGETS) $(COV_TARGET): sample.cpp
	$(LINK.cc) $^ $(LOADLIBES) $(LDLIBS) -o $@

coverage: $(COV_TARGET)
	./$(COV_TARGET)

all: $(TARGETS)

clean:
	$(RM) $(TARGETS) $(COV_TARGET)

.PHONY: all

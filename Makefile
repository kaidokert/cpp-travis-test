include compiler-flags.mk

CPPFLAGS += -std=c++11 -fno-exceptions -fno-rtti
CPPFLAGS += -Wall -Wextra -pedantic -Weffc++
CPPFLAGS += $(CPP_ALL_WARNINGS)

clang%: CPPFLAGS+= $(CLANG_EXTRA_WARNINGS)
g++%: CPPFLAGS+= $(GCC_ALL_WARNINGS)

TARGETS=$(CXX)_sample

$(TARGETS): sample.cpp
	$(LINK.cc) $^ $(LOADLIBES) $(LDLIBS) -o $@

.PHONY: all

all: $(TARGETS)

clean:
	$(RM) $(TARGETS)

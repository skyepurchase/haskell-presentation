CXX := g++
CXXFLAGS := -std=c++17 -O2 # -Wall -Wextra

TYPE := type_unsafe
LAZY := lazy_list

TYPE_SRCS := type_unsafe.cpp
LAZY_SRCS := lazy_list.cpp

TYPE_OBJS := type_unsafe.o
LAZY_OBJS := lazy_list.o

.PHONY: all clean

all: $(TYPE) $(LAZY)

$(TYPE): $(TYPE_OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^

$(LAZY): $(LAZY_OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<

clean:
	rm -f $(TYPE_OBJS) $(LAZY_OBJS) $(TYPE) $(LAZY)

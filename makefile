CXX := g++
CXXFLAGS := -std=c++17 -O2 -Wall -Wextra

TARGET := cpp_example
SRCS := cpp_example.cpp
OBJS := cpp_example.o

.PHONY: all clean run

all: cpp_example

cpp_example: cpp_example.o
	$(CXX) $(CXXFLAGS) -o cpp_example cpp_example.o

cpp_example.o: cpp_example.cpp
	$(CXX) $(CXXFLAGS) -c -o cpp_example.o cpp_example.cpp

run: all
	./cpp_example

clean:
	rm -f cpp_example.o

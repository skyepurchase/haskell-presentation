CXX := g++
CXXFLAGS := -std=c++17 -O2 -Wall -Wextra

TARGET := landin
SRCS := landin.cpp
OBJS := landin.o

.PHONY: all clean run

all: landin

landin: landin.o
	$(CXX) $(CXXFLAGS) -o landin landin.o

landin.o: landin.cpp
	$(CXX) $(CXXFLAGS) -c -o landin.o landin.cpp

run: all
	./landin

clean:
	rm -f landin.o

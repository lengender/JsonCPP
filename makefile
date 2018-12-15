CXX=g++
LINK_INC:=-I./include/   $(LINK_INC)
LINK_LIB:=./lib/libjsoncpp.a $(LINK_LIB)


TARGET = test


all:${TARGET}

$(TARGET):main.o
	$(CXX)  -o $@ $^ $(LINK_INC) $(LINK_LIB)

main.o:main.cpp
	$(CXX)  -c main.cpp $(LINK_INC)


clean:
	rm -rf *.o


#CFLAGS := -Wall -g -DDEBUG
LDFLAGS:=
LIBS   := -lpthread
LIBS   := -lm

CXXFLAGS:= -std=c++14
CXXFLAGS:= -O3 -std=c++0x -Wno-unused-result -Wno-write-strings -Wno-deprecated

cpp_srcs:= main.cpp \
	gvns.cpp \
	local2opt.cpp \
	localgenius.cpp \
	localsearch.cpp \
	localvnd.cpp \
	mtrandom.cpp \
	tsptwcons.cpp \
	tsptw.cpp \
	tsptwpoint.cpp \
	tsptwreader.cpp \
	tsptwsolution.cpp \
	vns.cpp

#cpp_srcs += cputimer.cpp windowstimer.cpp

cpp_objs:= $(cpp_srcs:.cpp=.o)

progs:= Run

all: $(cpp_objs) $(progs)

Run: $(cpp_objs)

$(progs):
	$(CXX) $(LDFLAGS) -o $@ $^ $(LIBS)

%.o: %.cpp
	$(CXX) $(CFLAGS) $(CXXFLAGS) -c -o $@ $<

install: $(progs)

clean:
	$(RM) $(progs) *.o *~

dep:
	$(CXX) -MM $(CFLAGS) $(CXXFLAGS) $(cpp_srcs) >> .depend
-include .depend

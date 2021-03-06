
hello: hello.c
	echo "compile hello.c"
	gcc -o hello hello.c
	echo "compile is ok"

tt: tt.c
	gcc -o tt tt.c

clean:
	rm -rf hello tt

SOMEFILE = `date +%02d%02m%02y`.dat
CURTIME0 = `date +%T`.dat
CURTIME1 = $(shell date +%T).dat

all: 
	@echo $(SOMEFILE)

all1: 
	@echo $(CURTIME0)
	@echo $(CURTIME1)
	sleep 5
	@echo $(CURTIME0)
	@echo $(CURTIME1)


allerr: $(SOMEFILE)
	@echo "print"

2905.dat:
	touch 2905.dat

TRAD=               hello world              
TRAD1=$()              hello world              $()

define DEFD
	            hello world again       
endef

test:
	@echo $(TRAD)
	@echo $(TRAD1)
	@echo $(DEFD)

test1:
	@echo '$(TRAD)'
	@echo '$(TRAD1)'
	@echo '$(DEFD)'

test2:
	@echo "'$(TRAD)'"
	@echo "'$(TRAD1)'"
	@echo "'$(DEFD)'"

tflag0:
	@echo $(FLAGS)

FLAGS = first

tflag:
	@echo $(FLAGS)

FLAGS = second


tflag1:
	@echo $(FLAGS)

# Suffixes rule
.SUFFIXES: .cxx

.cxx.o:
	$(CXX) -c $(CPPFLAGS) $(CXXFLAGS) $<

# Pattern rule
%.o: %.cxx
	$(CXX) -c $(CPPFLAGS) $(CXXFLAGS) $<

SRCS=foo.c bar.c tt.cpp
#OBJS=$(SRCS:.c=.o)
#OBJS=$(patsubst %.c, %.o, $(SRCS))
#OBJS=$(patsubst %.cpp, %.o, $(patsubst %.c, %.o, $(SRCS)))
OBJS=$(addsuffix .o, $(basename $(SRCS)))

PRTOBJS:
	@echo $(OBJS)

#A=0

ifeq ($(A), 0)
allA:
	@echo $(A) == 0
else
allA:
	@echo $(A) != 0

endif

#A=0

#ifndef (A_VITAL_VARIABLE)
#$(error oops!! A_VITAL_VARIABLE is not set )

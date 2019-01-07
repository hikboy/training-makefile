
hello: hello.c
	echo "compile hello.c"
	gcc -o hello hello.c
	echo "compile is ok"

tt: tt.c
	gcc -o tt tt.c

clean:
	rm -rf hello tt

SOMEFILE = `date +%02d%02m%02y`.dat

all: 
	@echo $(SOMEFILE)


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




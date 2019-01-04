
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



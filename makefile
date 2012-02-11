all: test

test: lex.yy.c 
	gcc -o test lex.yy.c -lfl

lex.yy.c: test.l 
	flex test.l

clean:
	rm -rf lex.yy.c *.o 

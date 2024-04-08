all: pract3a.exe
pract3a.exe: pract3a.obj factor.obj
	tcc -v -ml c0l.obj pract3a.obj factor.obj
pract3a.obj: pract3a.c
	tcc -c -v -ml -Ic:\compila\tc\include pract3a.c
factor.obj: factor.asm
	tasm /zi /ml factor,,factor

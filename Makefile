CC = gcc
CFLAGS = -std=c99
SRC = ./source
OBJ = ./object


object : compile
	${CC} ${CFLAGS} -o ex2 ex2.o main.o

compile : ${SRC}/ex2.c ${SRC}/poinH.h ${SRC}/main.c
	${CC} ${CFLAGS} -c ${SRC}/ex2.c ${SRC}/main.c
	echo "ex2.c compiled" 


clean : 
	rm -rf *.o ex2
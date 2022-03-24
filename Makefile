CC = gcc              # Flags are the most important part in writing a Makefile don't underestimate it.
CFLAGS = -std=c99
SRC = ./src

Main : build make

build : object run# option that runs an option

object : compile
	${CC} ${CFLAGS} -o ex2 ex2.o main.o

compile : ${SRC}/ex2.c ${SRC}/poinH.h ${SRC}/main.c # those are conditions to run the option 
	${CC} ${CFLAGS} -c ${SRC}/ex2.c ${SRC}/main.c
	echo "ex2.c compiled" 

run : ./ex2 
	./ex2

#make :  uncomment this if u wanna be loved ;) 
#	make -s 

clean :  # option that needs to be called to apply the following commands
	rm -rf *.o ex2
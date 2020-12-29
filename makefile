
CFLAGS = -c -Wall
CC = gcc
LIBS =  -lm

all: ser cli

cli: tcp_client.c
	 ${CC} -o client.o tcp_client.c

ser: select_server.c
	 ${CC} server.h	lib.h select_server.c -o server.o 


clean:
	rm -f *.o *~

CFLAGS	= -Wall -std=c++11 -g
CC		= g++
COBJS	= client.o
SOBJS	= server.o

all			: client server

client		: 	$(COBJS)
			$(CC) -o $@ $(COBJS)

client.o	:	client.cpp 
			$(CC) $(CFLAGS) -c client.cpp

server		:	server.o
			$(CC) -o $@ server.o
			
server.o	:	server.cpp
			$(CC) $(CFLAGS) -c server.cpp


clean		:
			rm -f *.o core client server
			rm -rf .vscode/ipch


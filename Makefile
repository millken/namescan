OBJS = dns.o fingerprint.o list.o radar.o scanner.o sock.o log.o cmdline.o main.o

CC=gcc
CCC=g++
LOCALDIR=/usr/local/m64
FLAGS=-m64


CFLAGS = $(FLAGS) -O3  -pthread -I`pwd`/./ 
CCFLAGS=$(CFLAGS)
CXXFLAGS=$(CFLAGS)

# netbsd + linux:
LDFLAGS = -L$(LOCALDIR)/lib -lpthread -lpcap


all: namescan

namescan: $(OBJS)
	$(CC) -o namescan $(CFLAGS) $(OBJS) $(LDFLAGS)

install:

clean:
	rm -f $(OBJS) namescan


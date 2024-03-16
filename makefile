TARGET = tarea1.out #Nombre del ejecutable producido

CFLAGS = -Wall -Wextra -Wpointer-arith -g -std=c99
CC = gcc

SRCS := $(wildcard *.c)
HEADERS := $(wildcard *.h)
OBJECTS := $(SRCS:%.c=%.o)

all: $(TARGET)

.PHONY: all clean

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

#.PRECIOUS: $(TARGET) $(OBJECTS)

%.out: $(OBJECTS) $(HEADERS)
	$(CC) $(CFLAGS) $^ -o $@

clean:
	rm -rf *.o $(TARGET)
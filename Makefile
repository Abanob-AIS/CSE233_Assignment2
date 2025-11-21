# CSE233 Assignment 2 Makefile
# Student: Abanob Yousry Fahmy
# ID: 23101861

CC = gcc
CFLAGS = -Wall -Wextra -g

# هنا بنحدد أسماء البرامج النهائية اللي هتطلع
all: process_creation background_sleep linked_program simple_program

process_creation: process_creation.c
	$(CC) $(CFLAGS) -o process_creation process_creation.c


background_sleep: background_sleep.c
	$(CC) $(CFLAGS) -o background_sleep background_sleep.c
linked_program: file1.o file2.o
	$(CC) -o linked_program file1.o file2.o

file1.o: file1.c
	$(CC) $(CFLAGS) -c file1.c

file2.o: file2.c
	$(CC) $(CFLAGS) -c file2.c


simple_program: simple_program.c
	$(CC) $(CFLAGS) -o simple_program simple_program.c


clean:
	rm -f *.o process_creation background_sleep linked_program simple_program

.PHONY: all clean

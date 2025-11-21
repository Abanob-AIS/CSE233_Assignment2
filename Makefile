# CSE233 Assignment 2 Makefile
# Student: Abanob Yousry Fahmy
# ID: 23101861


CC = gcc
CFLAGS = -Wall -Wextra -g

SRC = src
BUILD = build

all: $(BUILD)/process_creation $(BUILD)/background_sleep $(BUILD)/linked_program $(BUILD)/simple_program

# 1. Process Creation
$(BUILD)/process_creation: $(SRC)/process_creation.c
	$(CC) $(CFLAGS) -o $(BUILD)/process_creation $(SRC)/process_creation.c

# 2. Background Sleep
$(BUILD)/background_sleep: $(SRC)/background_sleep.c
	$(CC) $(CFLAGS) -o $(BUILD)/background_sleep $(SRC)/background_sleep.c

# 3. Linked Program (files 1 & 2)
$(BUILD)/linked_program: $(SRC)/file1.c $(SRC)/file2.c
	$(CC) -o $(BUILD)/linked_program $(SRC)/file1.c $(SRC)/file2.c

# 4. Loader Demo
$(BUILD)/simple_program: $(SRC)/simple_program.c
	$(CC) $(CFLAGS) -o $(BUILD)/simple_program $(SRC)/simple_program.c

# Clean
clean:
	rm -f $(BUILD)/*

.PHONY: all clean

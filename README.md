# CSE233 Operating Systems Assignment 2 - Process Management

## Author
**Name:** Abanob Yousry Fahmy  
**ID:** 23101861  
**Institution:** Alamein International University, Faculty of Computer Science & Engineering  
**Course:** Operating Systems (CSE233)

---

## Project Overview
This repository contains the solution for Assignment 2 of CSE233, demonstrating basic operating systems concepts such as **process creation, process management, linking, and loading** using C programs and shell commands.

---

## Project Structure

```markdown
CSE233_Assignment2/
│
├── src/ # Source code files
│ ├── process_creation.c
│ ├── background_sleep.c
│ ├── file1.c
│ ├── file2.c
│ └── simple_program.c
│
├── include/ # Optional header files
│ └── *.h
│
├── build/ # Executables
│ ├── process_creation
│ ├── background_sleep
│ ├── linked_program
│ └── simple_program
│
├── screenshots/ # Screenshots of execution
│ ├── process_creation.png
│ ├── process_management.png
│ ├── linker_demo.png
│ └── loader_demo.png
│
├── Makefile
├── answer.txt
└── LICENSE
```



---

## Core Concepts Covered
1. **Process Creation**: Using `fork()` system call in C to create child processes.  
2. **Process Management**: Background execution (`&`), listing jobs, finding PID, pausing/resuming/terminating processes (`kill`).  
3. **Linker Role**: Connects compiled object files (`.o`) to create a single executable.  
4. **Loader Role**: Loads the executable into memory along with required dynamic libraries and starts execution.

---

## Prerequisites
- Linux OS (Ubuntu recommended)  
- GCC compiler  
- Make utility

---

## Installation
Clone the repository:
```bash
git clone https://github.com/Abanob-AIS/CSE233_Assignment2.git
cd CSE233_Assignment2


sudo apt update
sudo apt install gcc make
make
./build/process_creation
./build/background_sleep
./build/linked_program
./build/simple_program

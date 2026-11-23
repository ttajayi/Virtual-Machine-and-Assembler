# Virtual Machine & Assembler

A C++ implementation of a **two-pass assembler and virtual machine** designed to translate and execute programs written in a custom assembly language.

Developed as part of my Computer Engineering coursework at the University of Miami, this project explores low-level instruction processing, register operations, memory management, conditional branching, and program execution.

The project was originally developed in a remote Linux environment accessed through PuTTY (SSH), with additional development using Microsoft Visual Studio.

## Features

- **Two-Pass Assembler:** Processes assembly instructions in two stages to identify labels, resolve addresses, and translate instructions into executable machine code.
- **Virtual Machine Execution:** Interprets and executes assembled instructions using a custom instruction set.
- **Register Operations:** Supports eight general-purpose registers for storing and manipulating integer values.
- **Memory Management:** Implements separate code, data, and string memory.
- **Arithmetic Operations:** Supports addition, subtraction, multiplication, and integer division.
- **Conditional Branching:** Implements zero, negative, and positive conditional jumps, as well as unconditional jumps.
- **Input and Output:** Supports reading integers from the user and displaying numerical and string output.
- **Error Handling:** Includes checks for conditions such as invalid memory addresses, duplicate labels, and division by zero.
- **Instruction Tracing:** Includes an optional execution-tracing feature for examining instructions during execution.

## Technologies Used

- **Programming Language:** C++
- **Operating Environments:** Linux and Windows
- **Development Tools:** PuTTY (SSH), GNU C++ Compiler (`g++`), Microsoft Visual Studio
- **Core Concepts:** Assembly language, instruction encoding, register manipulation, memory addressing, file I/O, conditional branching, and program execution

## How It Works

### 1. Assembly Processing

The assembler reads an assembly-language source file and processes it in two passes.

**First Pass**

- Identifies labels and their corresponding instruction addresses.
- Records variable declarations and initial values.
- Counts instructions and string declarations.
- Detects duplicate labels and variables.

**Second Pass**

- Translates assembly instructions into encoded machine instructions.
- Resolves references to labels and variables.
- Stores the resulting instructions in code memory.

### 2. Virtual Machine Execution

After assembly, the virtual machine executes the encoded instructions.

The virtual machine maintains:

- 8 general-purpose registers
- 1,000 code-memory locations
- 1,000 integer data-memory locations
- 200 string-memory locations
- A program counter to track instruction execution

Instructions are decoded and executed sequentially unless a branching instruction changes the program counter.

### 3. Supported Instructions

| Category | Instructions |
|---|---|
| Register loading | `LOADN`, `LOADM`, `LOADR` |
| Addition | `ADDN`, `ADDM`, `ADDR` |
| Subtraction | `SUBN`, `SUBM`, `SUBR` |
| Multiplication | `MULN`, `MULM`, `MULR` |
| Division | `DIVN`, `DIVM`, `DIVR` |
| Memory storage | `STORE` |
| Conditional branching | `JZER`, `JNEG`, `JPOS` |
| Unconditional branching | `JUMP` |
| Input/output | `READN`, `OUTR`, `OUTSN`, `OUTSR` |
| Program termination | `STOP` |


```

## Assembly Program Examples

The `examples/` directory contains five assembly programs demonstrating different capabilities of the virtual machine.

### 1. Arithmetic Operations

**File:** `examples/arithmetic.asm`

Demonstrates addition, subtraction, multiplication, and integer division using register values.

The extended program performs 35 iterations with changing starting values.

### 2. Register Operations

**File:** `examples/register_operations.asm`

Demonstrates transferring values between registers and performing register-based arithmetic.

The extended program executes 35 iterations of register manipulation and calculations.

### 3. Memory Operations

**File:** `examples/memory_operations.asm`

Demonstrates storing values in data memory, loading stored values into registers, updating values, and retrieving them.

The extended program performs 35 iterations of memory operations.

### 4. Double Number

**File:** `examples/double_number.asm`

An interactive program that reads an integer, multiplies it by two, and displays the result.

The program continues accepting numbers until the user enters `0`.

## Sample Program Output

The following example demonstrates the doubling program with user-provided inputs.

```text
Enter a number: 55
The double is: 110

Enter a number: 110
The double is: 220

Enter a number: 220
The double is: 440

Enter a number: 440
The double is: 880

Enter a number: 880
The double is: 1760
```

Additional extended console transcripts are available in the [`outputs/`](outputs/) directory.

## Compilation and Execution

### Requirements

- A C++ compiler supporting C++11
- A Linux terminal or compatible development environment

### Compile on Linux

```bash
g++ -std=c++11 main.cpp -o assembler
```

### Run an Example Program

```bash
./assembler examples/arithmetic.asm
```

Other examples can be executed by replacing the filename with the corresponding assembly program.

For example:

```bash
./assembler examples/register_operations.asm
./assembler examples/memory_operations.asm
./assembler examples/double_number.asm
```

Interactive programs accept user input through the terminal.

**Compatibility Note:** The project has been compiled and exercised using `g++` on Linux. The Windows/Visual Studio configuration has not yet been fully verified.

## Program Outputs

The `outputs/` directory contains extended console transcripts corresponding to the assembly programs in `examples/`.

These demonstrations showcase arithmetic calculations, register manipulation, memory operations, conditional branching, and interactive input/output.

Each output file shares the name of its corresponding assembly program, making it easy to compare the source instructions with the execution results.

## Project Background

Developed as part of Computer Engineering coursework at the **University of Miami**.

The project provided hands-on experience with low-level programming concepts, assembler design, instruction execution, register-based computation, and memory management.

By implementing both an assembler and a virtual machine in C++, the project demonstrates how human-readable instructions can be translated into encoded instructions and executed through a simulated computing environment.

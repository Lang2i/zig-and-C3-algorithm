#  English Version

## 1. Project Overview

Zig is a modern system-level programming language focusing on safety, performance and simplicity, compatible with the C language ecosystem, suitable for low-level development and high-performance algorithm implementation; C3 is a new system language extended based on C, with simpler syntax and safer types, optimizing the development experience while retaining the core advantages of C. This project focuses on algorithm practice in both languages, covering core fields such as basic data structures, sorting algorithms, search algorithms, graph theory algorithms, dynamic programming, and mathematical algorithms. Each algorithm is implemented in Zig and C3 versions separately, with unified code structure and detailed comments, facilitating comparative learning of syntax differences and programming ideas between the two languages.

All source codes in this project are open-source and free, supporting direct cloning, compilation, modification and secondary distribution. Developers are welcome to submit optimization suggestions, add algorithm cases or fix code issues.

**Version Compatibility**: Zig 0.15.2 | C3 0.7.10

## 2. Directory Structure & Code Links

The project is classified by algorithm type, and each algorithm corresponds to an independent source code file. Below are the core directories and accurate code jump links, click to directly jump to the corresponding GitHub code page:

### 2.1 Sorting Algorithms

- **Bubble Sort**

    - Zig Implementation: [zig in here](https://github.com/Lang2i/zig-and-C3-algorithm/blob/main/zig/mp.zig)

    - C3 Implementation: [c3 in here](https://github.com/Lang2i/zig-and-C3-algorithm/blob/main/c3/mp.c3)

- **Bucket Sort**

    - Zig Implementation: [zig in here](https://github.com/Lang2i/zig-and-C3-algorithm/blob/main/zig/t.zig)

    - C3 Implementation: [c3 in here](https://github.com/Lang2i/zig-and-C3-algorithm/blob/main/c3/t.c3)

- **Quick Sort**

    - Zig Implementation:[zig in here](https://github.com/Lang2i/zig-and-C3-algorithm/blob/main/zig/QuickSort.zig)

    - C3 Implementation: [c3 in here](https://github.com/Lang2i/zig-and-C3-algorithm/blob/main/c3/QuickSort.c3)

## 3. Local Compilation & Running

### 3.1 Zig Code Execution

1. Install the latest Zig compiler: [Zig Official Download](https://ziglang.org/download/)

2. Clone the project locally: `git clone https://github.com/Lang2i/zig-and-C3-algorithm.git`

3. Enter the corresponding source code directory and run the compilation command: `zig run filename.zig`

### 3.2 C3 Code Execution

1. Install the C3 compiler: [C3 Compiler Repository](https://github.com/c3lang/c3c) or [C3 Official Download](https://c3-lang.org/)

2. Enter the corresponding source code directory and run the compilation command: `c3c compile filename.c3`

3. Run the generated executable file to view the algorithm running results

## 4. Contribution Guidelines

Pull requests are welcome for adding new algorithms, optimizing code, fixing bugs or supplementing comments. Contribution requirements:

- Standard code format, clear comments and rigorous logic

- Implement both Zig and C3 versions (except for special algorithms)

- Attach simple test cases to verify algorithm correctness

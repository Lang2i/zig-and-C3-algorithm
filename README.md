# Zig & C3 Algorithms Collection

**项目简介**：本项目专注于使用**Zig** 与 **C3** 两种现代系统级编程语言，实现各类经典算法、数据结构与实用算法案例，兼顾代码可读性、性能优化与工程规范性，为两种语言的学习者、开发者提供可直接复用、可参考学习的算法源码，所有代码均附带完整注释与测试用例，适配GitHub在线预览与本地编译运行。

---

# 🌐 语言切换 / Language Switch

点击下方链接快速切换对应语言板块：

- [中文版本说明](https://www.doubao.cn)

- [English Version](https://www.doubao.cn)

---

# 🇨🇳 中文版本

## 一、项目概述

Zig 是一门注重安全性、性能与简洁性的现代系统编程语言，兼容C语言生态，适合底层开发与高性能算法实现；C3 是基于C语言拓展的新型系统语言，语法更简洁、类型更安全，保留C语言核心优势的同时优化开发体验。本项目聚焦两类语言的算法实践，覆盖基础数据结构、排序算法、查找算法、图论算法、动态规划、数学算法等核心领域，每一类算法均分别实现Zig版本与C3版本，代码结构统一，注释详尽，方便对比学习两种语言的语法差异与编程思路。

项目所有源码均开源免费，支持直接克隆、编译、修改与二次分发，欢迎各位开发者提交优化建议、新增算法案例或修复代码问题。

zig版本为0.15.2   C3版本为0.7.10

## 二、目录结构与代码跳转链接

项目按算法类型分类存放，每个算法对应独立源码文件，下方为核心目录与精准代码跳转链接，点击即可直接跳转到GitHub对应代码页面：


### 2.1 排序算法

- **冒泡排序 & 选择排序 (Bubble & Selection Sort)**

    - Zig 实现：[basic_sort.zig](https://github.com/[你的GitHub用户名]/[你的项目名]/blob/main/src/zig/basic_sort.zig)

    - C3 实现：[basic_sort.c3](https://github.com/[你的GitHub用户名]/[你的项目名]/blob/main/src/c3/basic_sort.c3)


## 三、本地编译与运行说明

### 3.1 Zig 代码运行

1. 安装最新版Zig编译器：[Zig 官网下载](https://ziglang.org/download/)    

2. 克隆项目到本地：`git clone https://github.com/[你的GitHub用户名]/[你的项目名].git`

3. 进入对应源码目录，执行编译运行命令：`zig run 文件名.zig`

### 3.2 C3 代码运行

1. 安装C3编译器：[C3 编译器仓库](https://github.com/c3lang/c3c)

2. 进入对应源码目录，执行编译命令：`c3c compile 文件名.c3`

3. 运行生成的可执行文件即可查看算法运行结果

## 四、贡献指南

欢迎提交PR新增算法、优化代码、修复bug或补充注释，贡献要求：

- 代码格式规范，注释清晰，逻辑严谨

- 同时实现Zig与C3双版本（特殊算法除外）

- 附带简单测试用例，验证算法正确性

---

# 🇺🇸 English Version

## 1. Project Overview

This project focuses on implementing various classic algorithms, data structures and practical algorithm cases using **Zig** and **C3**, two modern system-level programming languages. It balances code readability, performance optimization and engineering standardization, providing reusable and learnable algorithm source code for learners and developers of both languages.

Zig is a modern system programming language emphasizing safety, performance and simplicity, fully compatible with the C ecosystem, ideal for low-level development and high-performance algorithm implementation. C3 is a new system language extended from C, with cleaner syntax, safer types, retaining C's core advantages while optimizing the development experience. All codes in this project are fully commented, with unified structure and test cases, supporting online preview on GitHub and local compilation & execution.

All source codes are open-source and free, supporting direct cloning, compilation, modification and secondary distribution. Contributions are welcome from all developers.

Zig version: 0.15.2, C3 version: 0.7.10
## 2. Directory Structure & Code Jump Links

The project is organized by algorithm types, with each algorithm corresponding to an independent source file. Click the links below to jump directly to the corresponding code page on GitHub:


## 3. Local Compilation & Execution

### 3.1 Run Zig Code

1. Install the latest Zig compiler: [Zig Official Download](https://ziglang.org/download/)

2. Clone the project locally: `git clone https://github.com/[Your GitHub Username]/[Your Project Name].git`

3. Enter the source code directory and run: `zig run filename.zig`

### 3.2 Run C3 Code

1. Install C3 compiler: [C3 Compiler Repository](https://github.com/c3lang/c3c)

2. Enter the source code directory and compile: `c3c build filename.c3`

3. Run the generated executable file to check algorithm results

## 4. Contribution Guide

Pull requests are welcome for adding new algorithms, optimizing code, fixing bugs or adding comments. Contribution requirements:

- Standard code format, clear comments and rigorous logic

- Implement both Zig and C3 versions (except for special algorithms)

- Attach simple test cases to verify algorithm correctness

---

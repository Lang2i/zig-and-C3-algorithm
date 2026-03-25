# Zig & C3 Algorithms Collection

**项目简介**：本项目专注于使用**Zig** 与 **C3** 两种现代系统级编程语言，实现各类经典算法、数据结构与实用算法案例，兼顾代码可读性、性能优化与工程规范性，为两种语言的学习者、开发者提供可直接复用、可参考学习的算法源码，所有代码均附带完整注释与测试用例，适配GitHub在线预览与本地编译运行。

---

# 🌐 语言切换 / Language Switch

点击下方链接快速切换对应语言板块：

- [中文版本说明](https://github.com/Lang2i/zig-and-C3-algorithm/blob/main/README.md)

- [English Version](https://github.com/Lang2i/zig-and-C3-algorithm/blob/main/md.md)

---

# 🇨🇳 中文版本

## 一、项目概述

Zig 是一门注重安全性、性能与简洁性的现代系统编程语言，兼容C语言生态，适合底层开发与高性能算法实现；C3 是基于C语言拓展的新型系统语言，语法更简洁、类型更安全，保留C语言核心优势的同时优化开发体验。本项目聚焦两类语言的算法实践，覆盖基础数据结构、排序算法、查找算法、图论算法、动态规划、数学算法等核心领域，每一类算法均分别实现Zig版本与C3版本，代码结构统一，注释详尽，方便对比学习两种语言的语法差异与编程思路。

项目所有源码均开源免费，支持直接克隆、编译、修改与二次分发，欢迎各位开发者提交优化建议、新增算法案例或修复代码问题。

zig版本为0.15.2   C3版本为0.7.10

## 二、目录结构与代码跳转链接

项目按算法类型分类存放，每个算法对应独立源码文件，下方为核心目录与精准代码跳转链接，点击即可直接跳转到GitHub对应代码页面：


### 2.1 排序算法

- **冒泡排序  (Bubble)**

    - Zig 实现：[zig in here](https://github.com/Lang2i/zig-and-C3-algorithm/blob/main/zig/mp.zig)

    - C3 实现：[c3 in here](https://github.com/Lang2i/zig-and-C3-algorithm/blob/main/c3/mp.c3)

- **桶排序  (Bucket Sort)**

    - Zig 实现：[zig in here](https://github.com/Lang2i/zig-and-C3-algorithm/blob/main/zig/t.zig)

    - C3 实现：[c3 in here](https://github.com/Lang2i/zig-and-C3-algorithm/blob/main/c3/t.c3)
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



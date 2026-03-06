# 概览

# 实验一（Nachos 系统的安装与调试）

## 任务要求

1. 安装 Linux 操作系统；

2. 安装 Nachos 及 gcc mips 交叉编译程序；

3. 编译测试 Nacho，并理解 Nachos 的运行参数的含义与使用；

4. 运行 Nachos，根据 Nachos 的输出，理解 Nachos 中第一个线程是如何产生的。
   理解并掌握 Nachos 中其它内核线程的创建方法；理解 idle 线程的创建与作用。
   进而理解一个实际的操作系统（如 Windows、Linux 等）的第一个进程是如何产生的，
   以及 ideler 进程的创建与使用。

5. 理解 Nachos 中的上下文切换过程；

6. 熟悉 gdb 调试工具；

7. 当启动 Nachos 时，首先运行的程序模块是 code/threads/main.cc 程序。每一个子目录中也有相应的 main.cc 程序（目前目录 code/filesys 及 code/userprog 中使用的是 code/threads 中的 main.cc）。

   从 code/threads 目录下的 main.cc 开始，阅读、分析 Nachos 的.cc 源文件及相关
   的头文件，理解 Nachos 内核、线程的工作机理:

   （1）Nachos 的启动过程，Nachos 的内核加载和初始化过程；
   （2）Nachos 的命令行参数及其处理方法
   （3）Nachos 的第一个线程--主线程（main）是如何创建的？
   （4）如何创建线程：主线程线程是如何创建另一个线程并在该线程中执行函数
   SimpleThread(int which) （该函数在 code/threads/threadtest.cc 中）。
   （5）Nachos 是如何进行上下文切换的；
   主要代码：
   ../threads/main.cc
   ../threads/system.cc（.h）
   ../threads/thread.cc（.h）
   ../threads/scheduler.cc（.h）
   ../threads/switch-linux.s

## 实验过程

### 安装Nachos

### xxx

## 结论与展望

# 参考文献
┌─────────────────────────────────────────────────────┐
│                  NachOS 构建过程                     │
│                                                     │ 
│  源码 → [预处理] → [编译] → [汇编] → [链接] → 二进制     │
│          CPP       g++      as      g++             │
└─────────────────────────────────────────────────────┘

gnumake: 提供make, 驱动构建过程
gcc_multi: 64位编译器和部分运行时, 32位libstdc++, libgcc, libgcc_s
binutils(gcc_multi 依赖引入): 链接器, ld、as、objdump等
glibc.dev: 64位C标准库头文件
pkgsi686Linux.glibc: 32位glib运行时, libc.so.6, ld-linux.so.2
pkgsi686Linux.glibc.dev: 32位C标准库头文件

其他:
zlib: 压缩库
bear: 提供compile_commands.json
ncurses: 终端模拟



修改：

- code/Makefile.common: CFLAGS增加-fno-pie
- code/Makefile.dep: LD_FLAG增加-no-pie


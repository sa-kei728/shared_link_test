#!/bin/bash

# currentdirであるlibfunc2.soのrpathを相対パスで埋め込んでいないtest.elfの生成
# 実行時にLD_LIBRARY_PATH=$LA_LIBRARY_PATH:../linker_test が必要
g++ main.cpp -L../linker_test -lfunc1 -o test_no_rpath.elf

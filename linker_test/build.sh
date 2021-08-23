#!/bin/bash

# subdirであるlibfunc2.soのrpathを相対パスで埋め込んだlibfunc1.soの生成
g++ -shared -fPIC -o libfunc1.so func1.cpp -Wl,-rpath=../linker_test_sub -L../linker_test_sub/ -lfunc2

# currentdirであるlibfunc2.soのrpathを相対パスで埋め込んだtest.elfの生成
g++ main.cpp -Wl,-rpath=./ -L./ -lfunc1 -o test.elf

# shared_link_test

## 前提
- g++コマンドが実行可能であること(GNU binutil等を用意する)

## 手順
shared libraryのrpath設定に関する実験コード

1. func2のshared object作成
```
cd ./linker_test_sub
./build.sh
```

2. func1のshared object作成&test.elf作成
```
cd ./linker_test
./build.sh
```

3. test.elf実行
```
./test.elf
```

## 補足
- test.elfのダイナミックセクション確認
```
$ objdump -p test.elf
~略~
Dynamic Section:
  NEEDED               libfunc1.so
  NEEDED               libc.so.6
  RUNPATH              ./linker_test
~略~

```

- libfunc1.soのダイナミックセクション確認
```
$ objdump -p libfunc1.so
~略~
Dynamic Section:
  NEEDED               libfunc2.so
  NEEDED               libstdc++.so.6
  NEEDED               libc.so.6
  RUNPATH              ../linker_test_sub
~略~
```
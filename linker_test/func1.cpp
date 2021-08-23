#include <iostream>
extern void func2();

void func1(){
    std::cout << "func1()" << "\n";
    func2();
}

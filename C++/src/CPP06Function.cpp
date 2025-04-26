#include <iostream>

// 一个简单的函数示例
void greet() {
    std::cout << "Hello, welcome to C++ programming!" << std::endl;
}

int add(int a, int b) {
    return a + b;
}

int main() {
    greet();

    int num1 = 5, num2 = 10;
    std::cout << "The sum of " << num1 << " and " << num2 << " is " << add(num1, num2) << std::endl;

    return 0;
}
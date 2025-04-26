#include <iostream>
#include <string>

int main() {
    // 整型
    int integer = 42;
    std::cout << "整型: " << integer << std::endl;

    // 浮点型
    float floatNum = 3.14f;
    double doubleNum = 2.71828;
    std::cout << "浮点型 (float): " << floatNum << std::endl;
    std::cout << "浮点型 (double): " << doubleNum << std::endl;

    // 字符型
    char character = 'A';
    std::cout << "字符型: " << character << std::endl;

    // 布尔型
    bool boolean = true;
    std::cout << "布尔型: " << std::boolalpha << boolean << std::endl;

    // 字符串
    std::string str = "Hello, World!";
    std::cout << "字符串: " << str << std::endl;

    // 无符号整型
    unsigned int unsignedInt = 100;
    std::cout << "无符号整型: " << unsignedInt << std::endl;

    // 长整型
    long longNum = 1234567890L;
    std::cout << "长整型: " << longNum << std::endl;

    // 短整型
    short shortNum = 32767;
    std::cout << "短整型: " << shortNum << std::endl;

    return 0;
}
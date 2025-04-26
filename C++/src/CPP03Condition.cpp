#include <iostream>

int main() {
    int number;
    std::cout << "请输入一个整数: ";
    std::cin >> number;

    // if-else 条件控制
    if (number > 0) {
        std::cout << "这是一个正数。" << std::endl;
    } else if (number < 0) {
        std::cout << "这是一个负数。" << std::endl;
    } else {
        std::cout << "这是零。" << std::endl;
    }

    // switch 条件控制
    std::cout << "请输入一个1到3之间的数字: ";
    std::cin >> number;
    switch (number) {
        case 1:
            std::cout << "你选择了1。" << std::endl;
            break;
        case 2:
            std::cout << "你选择了2。" << std::endl;
            break;
        case 3:
            std::cout << "你选择了3。" << std::endl;
            break;
        default:
            std::cout << "输入不在范围内。" << std::endl;
            break;
    }

    return 0;
}
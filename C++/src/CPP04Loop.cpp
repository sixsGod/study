#include <iostream>

int main() {
    // For loop example
    std::cout << "For loop example:" << std::endl;
    for (int i = 0; i < 5; ++i) {
        std::cout << "i = " << i << std::endl;
    }

    // While loop example
    std::cout << "\nWhile loop example:" << std::endl;
    int count = 0;
    while (count < 5) {
        std::cout << "count = " << count << std::endl;
        ++count;
    }

    // Do-while loop example
    std::cout << "\nDo-while loop example:" << std::endl;
    int num = 0;
    do {
        std::cout << "num = " << num << std::endl;
        ++num;
    } while (num < 5);

    return 0;
}
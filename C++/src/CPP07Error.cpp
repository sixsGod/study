#include <iostream>
#include <stdexcept>

void divide(int a, int b) {
    if (b == 0) {
        throw std::runtime_error("Division by zero is not allowed.");
    }
    std::cout << "Result: " << a / b << std::endl;
}

int main() {
    try {
        int x, y;
        std::cout << "Enter two integers (numerator and denominator): ";
        std::cin >> x >> y;
        divide(x, y);
    } catch (const std::runtime_error& e) {
        std::cerr << "Error: " << e.what() << std::endl;
    } catch (...) {
        std::cerr << "An unknown error occurred." << std::endl;
    }

    return 0;
}
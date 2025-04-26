#include <iostream>
#include <string>

int main() {
    std::string userInput;

    std::cout << "Enter some text: ";
    std::getline(std::cin, userInput);

    std::cout << "You entered: " << userInput << std::endl;

    return 0;
}
#include <iostream>
#include <fstream>
#include <string>

int main() {
    std::string filename = "example.txt";

    // Writing to a file
    std::ofstream outFile(filename);
    if (outFile.is_open()) {
        outFile << "Hello, this is a test file.\n";
        outFile << "File operations in C++ are simple.\n";
        outFile.close();
        std::cout << "Data written to " << filename << std::endl;
    } else {
        std::cerr << "Unable to open file for writing." << std::endl;
        return 1;
    }

    // Reading from a file
    std::ifstream inFile(filename);
    if (inFile.is_open()) {
        std::string line;
        std::cout << "Reading from " << filename << ":" << std::endl;
        while (std::getline(inFile, line)) {
            std::cout << line << std::endl;
        }
        inFile.close();
    } else {
        std::cerr << "Unable to open file for reading." << std::endl;
        return 1;
    }

    return 0;
}
#include <iostream>
#include <string>

class Person {
private:
    std::string name;
    int age;

public:
    // Constructor
    Person(const std::string& name, int age) : name(name), age(age) {}

    // Getter for name
    std::string getName() const {
        return name;
    }

    // Getter for age
    int getAge() const {
        return age;
    }

    // Setter for name
    void setName(const std::string& newName) {
        name = newName;
    }

    // Setter for age
    void setAge(int newAge) {
        age = newAge;
    }

    // Display information
    void displayInfo() const {
        std::cout << "Name: " << name << ", Age: " << age << std::endl;
    }
};

int main() {
    // Create an object of the Person class
    Person person("Alice", 25);

    // Display initial information
    person.displayInfo();

    // Modify attributes
    person.setName("Bob");
    person.setAge(30);

    // Display updated information
    person.displayInfo();

    return 0;
}
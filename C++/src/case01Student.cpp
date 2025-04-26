#include <iostream>
#include <vector>
#include <string>
#include <iomanip>

struct Student {
    std::string name;
    int id;
    float score;
};

class StudentManager {
private:
    std::vector<Student> students;

public:
    void addStudent(const std::string& name, int id, float score) {
        students.push_back({name, id, score});
    }

    void displayStudents() const {
        std::cout << std::setw(10) << "ID" 
                  << std::setw(20) << "Name" 
                  << std::setw(10) << "Score" << std::endl;
        for (const auto& student : students) {
            std::cout << std::setw(10) << student.id 
                      << std::setw(20) << student.name 
                      << std::setw(10) << student.score << std::endl;
        }
    }

    void findStudentById(int id) const {
        for (const auto& student : students) {
            if (student.id == id) {
                std::cout << "Student found: " << student.name 
                          << " with score: " << student.score << std::endl;
                return;
            }
        }
        std::cout << "Student with ID " << id << " not found." << std::endl;
    }

    void updateScore(int id, float newScore) {
        for (auto& student : students) {
            if (student.id == id) {
                student.score = newScore;
                std::cout << "Score updated for student " << student.name << std::endl;
                return;
            }
        }
        std::cout << "Student with ID " << id << " not found." << std::endl;
    }
};

int main() {
    StudentManager manager;
    int choice;

    do {
        std::cout << "\nStudent Management System\n";
        std::cout << "1. Add Student\n";
        std::cout << "2. Display All Students\n";
        std::cout << "3. Find Student by ID\n";
        std::cout << "4. Update Student Score\n";
        std::cout << "5. Exit\n";
        std::cout << "Enter your choice: ";
        std::cin >> choice;

        switch (choice) {
            case 1: {
                std::string name;
                int id;
                float score;
                std::cout << "Enter name: ";
                std::cin >> name;
                std::cout << "Enter ID: ";
                std::cin >> id;
                std::cout << "Enter score: ";
                std::cin >> score;
                manager.addStudent(name, id, score);
                break;
            }
            case 2:
                manager.displayStudents();
                break;
            case 3: {
                int id;
                std::cout << "Enter ID to search: ";
                std::cin >> id;
                manager.findStudentById(id);
                break;
            }
            case 4: {
                int id;
                float newScore;
                std::cout << "Enter ID to update score: ";
                std::cin >> id;
                std::cout << "Enter new score: ";
                std::cin >> newScore;
                manager.updateScore(id, newScore);
                break;
            }
            case 5:
                std::cout << "Exiting system. Goodbye!" << std::endl;
                break;
            default:
                std::cout << "Invalid choice. Please try again." << std::endl;
        }
    } while (choice != 5);

    return 0;
}
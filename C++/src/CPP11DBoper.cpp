#include <iostream>
#include <string>
#include <vector>
#include <map>

class Database {
public:
    void insert(const std::string& key, const std::string& value) {
        db[key] = value;
        std::cout << "Inserted: {" << key << ": " << value << "}\n";
    }

    void remove(const std::string& key) {
        if (db.erase(key)) {
            std::cout << "Removed key: " << key << "\n";
        } else {
            std::cout << "Key not found: " << key << "\n";
        }
    }

    void find(const std::string& key) const {
        auto it = db.find(key);
        if (it != db.end()) {
            std::cout << "Found: {" << it->first << ": " << it->second << "}\n";
        } else {
            std::cout << "Key not found: " << key << "\n";
        }
    }

    void display() const {
        std::cout << "Database contents:\n";
        for (const auto& pair : db) {
            std::cout << "{" << pair.first << ": " << pair.second << "}\n";
        }
    }

private:
    std::map<std::string, std::string> db;
};

int main() {
    Database db;

    db.insert("id1", "value1");
    db.insert("id2", "value2");
    db.display();

    db.find("id1");
    db.remove("id2");
    db.display();

    db.find("id2");

    return 0;
}
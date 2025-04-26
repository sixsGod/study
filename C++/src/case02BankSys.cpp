#include <iostream>
#include <string>
using namespace std;

class BankAccount {
private:
    string name;
    string accountNumber;
    double balance;

public:
    // 构造函数
    BankAccount(string name, string accountNumber, double balance) {
        this->name = name;
        this->accountNumber = accountNumber;
        this->balance = balance;
    }

    // 存款方法
    void deposit(double amount) {
        if (amount > 0) {
            balance += amount;
            cout << "存款成功！当前余额：" << balance << endl;
        } else {
            cout << "存款金额无效。" << endl;
        }
    }

    // 取款方法
    void withdraw(double amount) {
        if (amount <= balance && amount > 0) {
            balance -= amount;
            cout << "取款成功！当前余额：" << balance << endl;
        } else {
            cout << "取款失败：余额不足或金额无效。" << endl;
        }
    }

    // 查询信息
    void displayInfo() const {
        cout << "账户信息：" << endl;
        cout << "姓名：" << name << endl;
        cout << "账号：" << accountNumber << endl;
        cout << "余额：" << balance << endl;
    }
};

int main() {
    string name, accNum;
    double initialBalance;

    cout << "欢迎使用简易银行系统\n请输入您的姓名：";
    getline(cin, name);
    cout << "请输入您的账号：";
    getline(cin, accNum);
    cout << "请输入初始存款：";
    cin >> initialBalance;

    BankAccount user(name, accNum, initialBalance);

    int choice;
    do {
        cout << "\n请选择操作：\n";
        cout << "1. 存款\n2. 取款\n3. 查看账户信息\n4. 退出\n";
        cin >> choice;

        switch (choice) {
            case 1: {
                double amount;
                cout << "请输入存款金额：";
                cin >> amount;
                user.deposit(amount);
                break;
            }
            case 2: {
                double amount;
                cout << "请输入取款金额：";
                cin >> amount;
                user.withdraw(amount);
                break;
            }
            case 3:
                user.displayInfo();
                break;
            case 4:
                cout << "感谢使用，再见！" << endl;
                break;
            default:
                cout << "无效的选项，请重新输入。" << endl;
        }

    } while (choice != 4);

    return 0;
}

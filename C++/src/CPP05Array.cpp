#include <iostream>
using namespace std;

int main() {
    // 定义一个整型数组
    int arr[5] = {1, 2, 3, 4, 5};

    // 输出数组元素
    cout << "数组元素为: ";
    for (int i = 0; i < 5; i++) {
        cout << arr[i] << " ";
    }
    cout << endl;

    // 修改数组元素
    arr[2] = 10;
    cout << "修改后的数组元素为: ";
    for (int i = 0; i < 5; i++) {
        cout << arr[i] << " ";
    }
    cout << endl;

    return 0;
}
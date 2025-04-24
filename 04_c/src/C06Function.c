#include <stdio.h>

// Function declaration
int add(int a, int b);

int main() {
    int num1 = 5, num2 = 10;
    int result = add(num1, num2);
    printf("The sum of %d and %d is %d\n", num1, num2, result);
    return 0;
}

// Function definition
int add(int a, int b) {
    return a + b;
}
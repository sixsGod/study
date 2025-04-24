#include <stdio.h>

int main() {
    // Example of a simple for loop
    for (int i = 0; i < 10; i++) {
        printf("Iteration %d\n", i);
    }

    // Example of a while loop
    int count = 0;
    while (count < 5) {
        printf("While loop count: %d\n", count);
        count++;
    }

    // Example of a do-while loop
    int num = 0;
    do {
        printf("Do-while loop num: %d\n", num);
        num++;
    } while (num < 3);

    return 0;
}
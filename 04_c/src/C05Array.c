#include <stdio.h>

int main() {
    // Declare and initialize an array
    int numbers[] = {1, 2, 3, 4, 5};
    int size = sizeof(numbers) / sizeof(numbers[0]);

    // Print the elements of the array
    printf("Array elements:\n");
    for (int i = 0; i < size; i++) {
        printf("%d ", numbers[i]);
    }
    printf("\n");

    // Modify an element in the array
    numbers[2] = 10;

    // Print the modified array
    printf("Modified array elements:\n");
    for (int i = 0; i < size; i++) {
        printf("%d ", numbers[i]);
    }
    printf("\n");

    return 0;
}
#include <stdio.h>

int main() {
    // Integer types
    int integerVar = 10;
    short shortVar = 5;
    long longVar = 100000L;
    long long longLongVar = 10000000000LL;

    // Floating-point types
    float floatVar = 3.14f;
    double doubleVar = 3.14159265359;
    long double longDoubleVar = 3.141592653589793238L;

    // Character type
    char charVar = 'A';

    // Boolean type (requires stdbool.h in C99 or later)
    #include <stdbool.h>
    bool boolVar = true;

    // Printing the variables
    printf("Integer: %d\n", integerVar);
    printf("Short: %d\n", shortVar);
    printf("Long: %ld\n", longVar);
    printf("Long Long: %lld\n", longLongVar);
    printf("Float: %.2f\n", floatVar);
    printf("Double: %.10f\n", doubleVar);
    printf("Long Double: %.15Lf\n", longDoubleVar);
    printf("Character: %c\n", charVar);
    printf("Boolean: %s\n", boolVar ? "true" : "false");

    return 0;
}
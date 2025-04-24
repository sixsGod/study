#include <stdio.h>
#include <stdlib.h>

int main() {
    FILE *file = fopen("nonexistent.txt", "r");
    if (file == NULL) {
        perror("Error opening file");
        return EXIT_FAILURE;
    }

    // Perform file operations here

    fclose(file);
    return EXIT_SUCCESS;
}
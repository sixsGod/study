#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Structure to represent a database record
typedef struct {
    int id;
    char name[50];
    float value;
} Record;

// Function to add a record to the database
void addRecord(FILE *dbFile, Record record) {
    fseek(dbFile, 0, SEEK_END);
    fwrite(&record, sizeof(Record), 1, dbFile);
    printf("Record added successfully.\n");
}

// Function to display all records in the database
void displayRecords(FILE *dbFile) {
    Record record;
    fseek(dbFile, 0, SEEK_SET);
    printf("ID\tName\t\tValue\n");
    printf("---------------------------------\n");
    while (fread(&record, sizeof(Record), 1, dbFile)) {
        printf("%d\t%s\t\t%.2f\n", record.id, record.name, record.value);
    }
}

// Function to search for a record by ID
void searchRecord(FILE *dbFile, int id) {
    Record record;
    fseek(dbFile, 0, SEEK_SET);
    while (fread(&record, sizeof(Record), 1, dbFile)) {
        if (record.id == id) {
            printf("Record found: ID=%d, Name=%s, Value=%.2f\n", record.id, record.name, record.value);
            return;
        }
    }
    printf("Record with ID=%d not found.\n", id);
}

int main() {
    FILE *dbFile = fopen("database.dat", "rb+");
    if (!dbFile) {
        dbFile = fopen("database.dat", "wb+");
        if (!dbFile) {
            perror("Failed to open database file");
            return 1;
        }
    }

    int choice;
    do {
        printf("\nDatabase Operations:\n");
        printf("1. Add Record\n");
        printf("2. Display Records\n");
        printf("3. Search Record by ID\n");
        printf("4. Exit\n");
        printf("Enter your choice: ");
        scanf("%d", &choice);

        switch (choice) {
            case 1: {
                Record record;
                printf("Enter ID: ");
                scanf("%d", &record.id);
                printf("Enter Name: ");
                scanf("%s", record.name);
                printf("Enter Value: ");
                scanf("%f", &record.value);
                addRecord(dbFile, record);
                break;
            }
            case 2:
                displayRecords(dbFile);
                break;
            case 3: {
                int id;
                printf("Enter ID to search: ");
                scanf("%d", &id);
                searchRecord(dbFile, id);
                break;
            }
            case 4:
                printf("Exiting...\n");
                break;
            default:
                printf("Invalid choice. Please try again.\n");
        }
    } while (choice != 4);

    fclose(dbFile);
    return 0;
}
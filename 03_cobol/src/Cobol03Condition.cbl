IDENTIFICATION DIVISION.
PROGRAM-ID. Cobol03Condition.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 AGE PIC 99 VALUE 25.
01 RESULT PIC X(20).

PROCEDURE DIVISION.
MAIN-PARA.
    IF AGE GREATER THAN 18
     MOVE "Adult" TO RESULT
    ELSE
     MOVE "Minor" TO RESULT
    END-IF.

    DISPLAY "Age: " AGE.
    DISPLAY "Category: " RESULT.

    STOP RUN.
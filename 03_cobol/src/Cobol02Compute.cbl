IDENTIFICATION DIVISION.
PROGRAM-ID. Cobol02Compute.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 NUM1        PIC 9(3) VALUE 25.
01 NUM2        PIC 9(3) VALUE 15.
01 RESULT      PIC 9(4).

PROCEDURE DIVISION.
MAIN-PROCEDURE.
    COMPUTE RESULT = NUM1 + NUM2
    DISPLAY "The result of addition is: " RESULT

    COMPUTE RESULT = NUM1 - NUM2
    DISPLAY "The result of subtraction is: " RESULT

    COMPUTE RESULT = NUM1 * NUM2
    DISPLAY "The result of multiplication is: " RESULT

    IF NUM2 NOT = 0
     COMPUTE RESULT = NUM1 / NUM2
     DISPLAY "The result of division is: " RESULT
    ELSE
     DISPLAY "Division by zero is not allowed."
    END-IF

    STOP RUN.
IDENTIFICATION DIVISION.
PROGRAM-ID. Cobol04Loop.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 COUNTER         PIC 9(2) VALUE 1.

PROCEDURE DIVISION.
MAIN-PROCEDURE.
    PERFORM UNTIL COUNTER > 10
     DISPLAY "Counter: " COUNTER
     ADD 1 TO COUNTER
    END-PERFORM
    STOP RUN.
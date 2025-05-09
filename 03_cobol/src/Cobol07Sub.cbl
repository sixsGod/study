IDENTIFICATION DIVISION.
PROGRAM-ID. Cobol07Sub.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 WS-NUM1        PIC 9(4) VALUE 0.
01 WS-NUM2        PIC 9(4) VALUE 0.
01 WS-RESULT      PIC 9(4) VALUE 0.

PROCEDURE DIVISION.
MAIN-PARA.
    DISPLAY "Enter first number: " WITH NO ADVANCING.
    ACCEPT WS-NUM1.
    DISPLAY "Enter second number: " WITH NO ADVANCING.
    ACCEPT WS-NUM2.

    PERFORM SUBTRACT-NUMBERS.

    DISPLAY "The result of subtraction is: " WS-RESULT.

    STOP RUN.

SUBTRACT-NUMBERS.
    COMPUTE WS-RESULT = WS-NUM1 - WS-NUM2.
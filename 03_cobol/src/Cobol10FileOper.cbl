IDENTIFICATION DIVISION.
PROGRAM-ID. Cobol10FileOper.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
    SELECT InputFile ASSIGN TO "input.txt"
     ORGANIZATION IS LINE SEQUENTIAL.
    SELECT OutputFile ASSIGN TO "output.txt"
     ORGANIZATION IS LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD InputFile.
01 InputRecord PIC X(100).

FD OutputFile.
01 OutputRecord PIC X(100).

WORKING-STORAGE SECTION.
01 WS-EndOfFile PIC X VALUE "N".

PROCEDURE DIVISION.
Main-Logic.
    OPEN INPUT InputFile
    OPEN OUTPUT OutputFile

    PERFORM UNTIL WS-EndOfFile = "Y"
     READ InputFile INTO InputRecord
         AT END
          MOVE "Y" TO WS-EndOfFile
         NOT AT END
          MOVE InputRecord TO OutputRecord
          WRITE OutputRecord
     END-READ
    END-PERFORM

    CLOSE InputFile
    CLOSE OutputFile
    STOP RUN.
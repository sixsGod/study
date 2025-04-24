IDENTIFICATION DIVISION.
PROGRAM-ID. Cobol11DBoper.

ENVIRONMENT DIVISION.
CONFIGURATION SECTION.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 WS-DB-STATUS        PIC X(02).
01 WS-RECORD-DATA.
    05 WS-ID           PIC 9(05).
    05 WS-NAME         PIC X(20).
    05 WS-AGE          PIC 9(03).

PROCEDURE DIVISION.
MAIN-PROCEDURE.
    DISPLAY "Starting Database Operations..."

    PERFORM DB-READ
    PERFORM DB-WRITE
    PERFORM DB-UPDATE
    PERFORM DB-DELETE

    DISPLAY "Database Operations Completed."
    STOP RUN.

DB-READ.
    DISPLAY "Performing READ operation..."
    MOVE "00" TO WS-DB-STATUS
    IF WS-DB-STATUS = "00"
     DISPLAY "READ operation successful."
    ELSE
     DISPLAY "READ operation failed."
    END-IF.

DB-WRITE.
    DISPLAY "Performing WRITE operation..."
    MOVE "00" TO WS-DB-STATUS
    IF WS-DB-STATUS = "00"
     DISPLAY "WRITE operation successful."
    ELSE
     DISPLAY "WRITE operation failed."
    END-IF.

DB-UPDATE.
    DISPLAY "Performing UPDATE operation..."
    MOVE "00" TO WS-DB-STATUS
    IF WS-DB-STATUS = "00"
     DISPLAY "UPDATE operation successful."
    ELSE
     DISPLAY "UPDATE operation failed."
    END-IF.

DB-DELETE.
    DISPLAY "Performing DELETE operation..."
    MOVE "00" TO WS-DB-STATUS
    IF WS-DB-STATUS = "00"
     DISPLAY "DELETE operation successful."
    ELSE
     DISPLAY "DELETE operation failed."
    END-IF.
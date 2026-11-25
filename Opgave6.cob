       IDENTIFICATION DIVISION. 
       PROGRAM-ID. OPGAVE6. 

       ENVIRONMENT DIVISION. 
       INPUT-OUTPUT SECTION. 
       FILE-CONTROL. 
           SELECT INPUT-FILE ASSIGN TO "Kundeoplysninger.txt" 
               ORGANIZATION IS LINE SEQUENTIAL. 

       DATA DIVISION. 
       FILE SECTION. 
           FD INPUT-FILE. 
           01 INPUT-RECORD.
                COPY "KUNDER.cpy".

       WORKING-STORAGE SECTION. 
           01 END-OF-FILE   PIC X VALUE "N". 
   
       PROCEDURE DIVISION.
      *> cobol-lint CL002 main-procedure
       MAIN-PROCEDURE.
           OPEN INPUT INPUT-FILE

           PERFORM UNTIL END-OF-FILE = "Y"
               READ INPUT-FILE INTO INPUT-RECORD
                   AT END 
                       MOVE "Y" TO END-OF-FILE
                   NOT AT END 
                       DISPLAY INPUT-RECORD
               END-READ
           END-PERFORM

           CLOSE INPUT-FILE 

           STOP RUN.

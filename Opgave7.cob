       IDENTIFICATION DIVISION. 
       PROGRAM-ID. OPGAVE7. 

       ENVIRONMENT DIVISION. 
       INPUT-OUTPUT SECTION. 
       FILE-CONTROL. 
           SELECT INPUT-FILE ASSIGN TO "Kundeoplysninger.txt" 
               ORGANIZATION IS LINE SEQUENTIAL.
           SELECT OUTPUT-FILE ASSIGN TO "KundeoplysningerOut.txt" 
               ORGANIZATION IS LINE SEQUENTIAL. 

       DATA DIVISION. 
       FILE SECTION. 
           FD INPUT-FILE. 
           01 INPUT-RECORD.
                COPY "KUNDER.cpy".
           
           FD OUTPUT-FILE. 
           01 KUNDE-ADR.
               02 NAVN-ADR     PIC X(100).

       WORKING-STORAGE SECTION. 
           01 END-OF-FILE   PIC X VALUE "N". 
           01 Fulde_navn_renset       PIC  X(40).
   
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           OPEN INPUT INPUT-FILE
           OPEN OUTPUT OUTPUT-FILE 

           PERFORM UNTIL END-OF-FILE = "Y"
               READ INPUT-FILE INTO INPUT-RECORD
                   AT END 
                       MOVE "Y" TO END-OF-FILE
                   NOT AT END 
                       MOVE Kunde_id OF INPUT-RECORD TO NAVN-ADR 
                       WRITE KUNDE-ADR
                       MOVE SPACES TO NAVN-ADR
                       PERFORM FORMAT-NAVN
                       WRITE KUNDE-ADR
                       MOVE SPACES TO NAVN-ADR

               END-READ
           END-PERFORM

           CLOSE INPUT-FILE 
           CLOSE OUTPUT-FILE

           STOP RUN.



           FORMAT-NAVN.
               STRING Fornavn OF INPUT-RECORD DELIMITED BY SIZE " "
                         DELIMITED BY SIZE Efternavn OF INPUT-RECORD
                         DELIMITED BY SIZE
                         INTO NAVN-ADR
               END-STRING  
           EXIT.
           
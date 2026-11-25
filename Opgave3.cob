       IDENTIFICATION DIVISION. 
       PROGRAM-ID. OPGAVE3. 

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
           01 Kunde_id         PIC X(10). 
           01 Fornavn         PIC X(20).
           01 Efternavn        PIC X(20).
           01 Kontonummer        PIC X(20) VALUE "hej".
           01 Balance         PIC S9(7)V9(2) VALUE 123.32.
           01 Valutakode         PIC X(3).
           01 FullName       PIC  X(40).

           01 IX           PIC 9(2).
           01 IX2          PIC 9(2) VALUE 1.
           01 CURRENT-CHAR     PIC X(1).
           01 PREVIOUS-CHAR    PIC X(1).
           01 Fulde_navn_renset       PIC  X(40).


       PROCEDURE DIVISION. 
           
           MOVE "1234567890" to Kunde_id.
           MOVE "Lars" to Fornavn.
           MOVE "Hansen" to Efternavn.
           MOVE "DK123456789012345" to Kontonummer.
           MOVE 2500.75 to Balance.
           MOVE "DDK" to Valutakode.

           STRING Fornavn DELIMITED BY SIZE " "
                   DELIMITED BY SIZE Efternavn
                   DELIMITED BY SIZE
                   INTO FullName

           PERFORM VARYING IX FROM 1 BY 1 UNTIL IX > LENGTH OF FullName
               
               MOVE FullName(IX:1) TO CURRENT-CHAR
               IF CURRENT-CHAR NOT = SPACE OR PREVIOUS-CHAR NOT = SPACE 
                   MOVE FullName(IX:1) TO Fulde_navn_renset(IX2:1)
                   MOVE FullName(IX:1) TO PREVIOUS-CHAR
                   ADD 1 TO IX2
               END-IF

           END-PERFORM

           DISPLAY "----------------------------------------" 
           DISPLAY "Kunde ID       : " KUNDE_ID 
           DISPLAY "Navn (renset)  : " Fulde_navn_renset 
           DISPLAY "Kontonummer    : " KONTONUMMER 
           DISPLAY "Balance        : " BALANCE " " VALUTAKODE 
           DISPLAY "----------------------------------------"     


           STOP RUN.

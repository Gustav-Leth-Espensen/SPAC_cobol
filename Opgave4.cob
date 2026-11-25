       IDENTIFICATION DIVISION. 
       PROGRAM-ID. OPGAVE4. 

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
           01 KundeOpl.
               02 Kunde_id         PIC X(10). 
               02 Fornavn         PIC X(20).
               02 Efternavn        PIC X(20).
               02 KontoInfo.
                   03 Kontonummer        PIC X(20) VALUE "hej".
                   03 Balance         PIC S9(7)V9(2) VALUE 123.32.
                   03 Valutakode         PIC X(3).
   
       PROCEDURE DIVISION. 

           MOVE "1234567890" to Kunde_id.
           MOVE "Lars" to Fornavn.
           MOVE "Hansen" to Efternavn.
           MOVE "DK123456789012345" to Kontonummer.
           MOVE 2500.75 to Balance.
           MOVE "DDK" to Valutakode.
           
           DISPLAY KundeOpl.
           STOP RUN.

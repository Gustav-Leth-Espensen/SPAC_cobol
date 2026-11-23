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
       PROCEDURE DIVISION. 
      * Nedenfor kommer en DISPLAY - COBOLs måde at skrive i konsollen
           MOVE "1234567890" to Kunde_id.
           MOVE "Lars" to Fornavn.
           MOVE "Hansen" to Efternavn.
           MOVE "DK123456789012345" to Kontonummer.
           MOVE 2500.75 to Balance.
           MOVE "DDK" to Valutakode.

           DISPLAY Kunde_id.
           DISPLAY Fornavn " " Efternavn.
           DISPLAY Kontonummer.
           DISPLAY Balance " " Valutakode.
           STOP RUN.

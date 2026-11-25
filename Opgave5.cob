       IDENTIFICATION DIVISION. 
       PROGRAM-ID. OPGAVE5. 

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
           01 KundeOpl.
               COPY "KUNDER.cpy".
   
       PROCEDURE DIVISION. 

           MOVE "1234567890" to Kunde_id.
           MOVE "Lars" to Fornavn.
           MOVE "Hansen" to Efternavn.
           MOVE "DK123456789012345" to Kontonummer.
           MOVE 2500.75 to Balance.
           MOVE "DDK" to Valutakode.
           MOVE "Test1" to VEJNAVN.
           MOVE "12" to HUSNR.
           MOVE 20034005 to TELEFON.

           DISPLAY KundeOpl.
           STOP RUN.

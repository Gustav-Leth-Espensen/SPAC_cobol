           02 Kunde_id         PIC X(10). 
           02 Fornavn         PIC X(20).
           02 Efternavn        PIC X(20).
           02 KontoInfo.
               03 Kontonummer        PIC X(20).
               03 Balance         PIC S9(7)V9(2).
               03 Valutakode         PIC X(3).
           02 ADDRESSE.
               03 VEJNAVN      PIC X(30). 
               03 HUSNR         PIC X(5). 
               03 ETAGE         PIC X(5). 
               03 SIDE          PIC X(5). 
               03 BY_NAVN            PIC X(20). 
               03 POSTNR        PIC X(4). 
               03 LANDE-KODE    PIC X(2). 
           02  KONTAKT_INFO.
               03 TELEFON       PIC X(8). 
               03 EMAIL         PIC X(50). 

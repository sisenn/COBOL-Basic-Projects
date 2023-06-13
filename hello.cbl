      *-----------------------
      * Copyright Contributors to the COBOL Programming Course
      * SPDX-License-Identifier: CC-BY-4.0
      *-----------------------
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FIRST-TRYING.
       AUTHOR. SINEM SEN.
       INSTALLATION. ECOLE 42 ISTANBUL.
       DATE-WRITTEN. 06/13/2023.
       DATA DIVISION. 
       WORKING-STORAGE SECTION.
       77  NAME     PIC X(6).
       77  SURNAME  PIC X(3).
       77  AGE      PIC 9(2).
       77  CITY     PIC X(8).
       PROCEDURE DIVISION.
           DISPLAY "Hello, what is your name?".
           MOVE "Sinem" TO NAME.
           DISPLAY "What is your surname?".
           MOVE "Sen" TO SURNAME.
           DISPLAY "How old are you?".
           MOVE 27 TO AGE.
           DISPLAY "Where are you from?".
           MOVE "ISTANBUL" TO CITY.
           DISPLAY "Nice to meet you " NAME SURNAME ".".
           DISPLAY "You are " AGE " years old" ".".
           DISPLAY "You are from " CITY ".".
           STOP RUN.
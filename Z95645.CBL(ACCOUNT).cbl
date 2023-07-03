       IDENTIFICATION DIVISION. 
       PROGRAM-ID. ACCOUNT.
       AUTHOR.     SİNEM ŞEN.
      *-----------------------------------------------------------------
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  CUSTOMER-INFORMATION.
           05 CUSTOMER-NAME        PIC X(15).
           05 CUSTOMER-LAST-NAME   PIC X(15).
           05 CUSTOMER-NO          PIC X(15).
       01  ACCOUNT-INFORMATION.
           05 BALANCE              PIC 9(5).
           05 TRANSFER-IN          PIC 9(4).
           05 TRANSFER-OUT         PIC 9(4).
           05 DEPOSIT              PIC 9(2).
           05 LAST-ACCOUNT         PIC 9(5) VALUE 00.
       01  CHECKS-VARIABLES.
           05 COUNTER              PIC 9    VALUE 01.
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
       1000-PROCESS.
           DISPLAY 'Please enter your name:'.
           ACCEPT CUSTOMER-NAME.
           PERFORM 2000-CHECK-CUSTOMER-NAME.
           DISPLAY 'Please enter your last name:'.
           ACCEPT CUSTOMER-LAST-NAME.
           PERFORM 3000-CHECK-CUSTOMER-LAST-NAME.
           DISPLAY 'Please enter your customer number:'.
           ACCEPT CUSTOMER-NO.
           DISPLAY 'You have successfully logged into the system.'.
           MOVE 85000 TO BALANCE.
           PERFORM 4000-CHECK-BALANCE.
           DISPLAY 'Amount of money to transfer:'.
           ACCEPT TRANSFER-OUT.
           DISPLAY 'Amount of money received in your account:'.
           ACCEPT TRANSFER-IN.
           IF TRANSFER-OUT > 5000
              MOVE 20 TO DEPOSIT
           ELSE 
              MOVE 05 TO DEPOSIT
           END-IF.
           COMPUTE LAST-ACCOUNT = (BALANCE + TRANSFER-IN) - 
                   (TRANSFER-OUT + DEPOSIT).
           DISPLAY 'Total balance of your account:' LAST-ACCOUNT 'TL'.
       1000-END. EXIT.
           STOP RUN.
      *-----------------------------------------------------------------
       2000-CHECK-CUSTOMER-NAME.
           PERFORM VARYING COUNTER FROM 1 BY 1 UNTIL COUNTER > -
           LENGTH OF CUSTOMER-NAME
                IF NOT (CUSTOMER-NAME(COUNTER:1) IS ALPHABETIC)
                  DISPLAY 'Invalid character found in CUSTOMER-NAME'
                  STOP RUN
                END-IF
           END-PERFORM.
       2000-END. EXIT.
      *-----------------------------------------------------------------
       3000-CHECK-CUSTOMER-LAST-NAME.
           PERFORM VARYING COUNTER FROM 1 BY 1 UNTIL COUNTER > -
           LENGTH OF CUSTOMER-LAST-NAME 
               IF NOT(CUSTOMER-LAST-NAME(COUNTER:1) IS ALPHABETIC)
                 DISPLAY 'Invalid character found in CUSTOMER-LAST-NAME'
                 STOP RUN
               END-IF
           END-PERFORM.
       3000-END. EXIT.
      *-----------------------------------------------------------------
       4000-CHECK-BALANCE.
           IF TRANSFER-OUT > BALANCE
             DISPLAY 'Your balance is insufficient for the transaction.'
             STOP RUN
           END-IF.
       4000-END. EXIT.
      *-----------------------------------------------------------------
        
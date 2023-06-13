       IDENTIFICATION DIVISION. 
       PROGRAM-ID. CALCULATOR.
       DATA DIVISION. 
       WORKING-STORAGE SECTION.
       77  NUMBER-1 PIC 9(4).
       77  NUMBER-2 PIC 9(4).
       77  RESULT   PIC S9(8).
       77  OPERATOR PIC X.
       PROCEDURE DIVISION.
           DISPLAY "Enter First Number : ".
           ACCEPT NUMBER-1.
           DISPLAY "Enter Second Number : ".
           ACCEPT NUMBER-2.
           DISPLAY "Enter the Action : ".
           ACCEPT OPERATOR.
           IF OPERATOR = '+' 
              COMPUTE  RESULT = NUMBER-1 + NUMBER-2 
           ELSE
              IF OPERATOR = '-' 
                 COMPUTE  RESULT = NUMBER-1 - NUMBER-2
              ELSE
                 IF OPERATOR = '*'
                    COMPUTE RESULT = NUMBER-1 * NUMBER-2 
                 ELSE
                    IF OPERATOR = '/' 
                       COMPUTE RESULT  = NUMBER-1 / NUMBER-2 
                    ELSE
                    DISPLAY "Wrong Operator!"
                    GOBACK
           END-IF.
           DISPLAY RESULT.
                    STOP RUN.
 *Adicionar os créditos do movimento ao saldo do cliente. Se o saldo do cliente for menor que zero, calcular juros.     
      
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ATUALIZAR-SALDO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 SALDO-CLIENTE    PIC S9(9)V99 COMP-3 VALUE 0.
       01 MOVIMENTO        PIC S9(9)V99 COMP-3 VALUE 0.

       PROCEDURE DIVISION.
           DISPLAY "Digite o valor do movimento: ".
           ACCEPT MOVIMENTO.

           ADD MOVIMENTO TO SALDO-CLIENTE.

           IF SALDO-CLIENTE IS LESS THAN ZERO THEN
               PERFORM CALCULAR-JUROS
           END-IF.

           DISPLAY "Saldo atualizado: " SALDO-CLIENTE.
           STOP RUN.

       CALCULAR-JUROS.
           DISPLAY "Calculando juros para saldo negativo.".
           *> Aqui você pode adicionar lógica para calcular os juros.
           EXIT.

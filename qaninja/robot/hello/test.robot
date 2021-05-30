
*** Settings ***
Library     app.py


*** Test Cases ***
Deve retornar mensagem de boas vindas
   ${result}=           welcome        Cássia
   Should Be Equal      ${result}      Olá Cássia, bem vinda ao curso básico de Robot Framework!

***Settings***
Resource    base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão


**Test Cases***
Selecionando por Texto e validando pelo valor
    Go To                           ${url}/dropdown
    Select from List by Label       class:avenger-list          Scott Lang
    ${selected}                     Get Selected List Value     class:avenger-list
    Should Be Equal                 ${selected}                 7


Selecionando por Valor e validando pelo texto
    Go To                           ${url}/dropdown
    Select from List by Value       id:dropdown                 6
    ${selected}                     Get Selected List Label     id:dropdown
    Should Be Equal                 ${selected}                 Loki


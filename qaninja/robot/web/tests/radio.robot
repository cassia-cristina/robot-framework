*** Settings ***
Resource        base.robot 

Test Setup      Nova sessão
Test Teardown   Encerra sessão


*** Variables ***
${grupo}          movies
${cap}            cap
${guardians}      guardians

*** Test Cases ***
Selecionando opção por Id
    [Tags]      cap
    Go To                               ${url}/radios
    Select Radio Button                 ${grupo}   ${cap}
    Radio Button Should Be Set To       ${grupo}   ${cap}
    

Selecionando opção por Value
    [Tags]      guardians
    Go To                               ${url}/radios
    Select Radio Button                 ${grupo}   ${guardians}
    Radio Button Should Be Set To       ${grupo}   ${guardians}
    
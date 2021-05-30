***Settings***
Documentation       Testes da página de login.

Resource            ../resources/base.robot

#gancho para tirar screenshot após a execução de cada teste.
Test Teardown       Take Screenshot

***Test Cases***
Login com sucesso
    [Tags]          sucess
    Open Login
    Login With      papito@parodify.com    pwd123
    Logout Link Should Be Visible    

Senha inválida
    Open Login
    Login With         papito@parodify.com    pad456
    Alert Should Be    Opps! Dados de acesso incorretos!    

Usuário não encontrado
    Open Login
    Login With         fernando@parodify.com   pwd123
    Alert Should Be    Opps! Dados de acesso incorretos!    

Usuário não informado
    Open Login
    Login With         ${Empty}    pwd123
    Alert Should Be    Opps! Dados de acesso incorretos!        

Senha não informada
    Open Login
    Login With         papito@parodify.com  ${Empty}
    Alert Should Be    Opps! Dados de acesso incorretos!
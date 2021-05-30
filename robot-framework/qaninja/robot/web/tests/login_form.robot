***Settings***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

***Test Cases***
Login com sucesso usando css
    [tags]                  login
    Go To                   ${url}/login
    Login With              stark       jarvis!
    Should See Logged user  Tony Stark

Senha inválida
    [Tags]                  login_password_error
    Go To                   ${url}/login
    Login With              stark       jarvi
    Login Alert             Senha é invalida!

Usuário não cadastrado
    [Tags]                  login_user_error
    Go To                   ${url}/login
    Login With              stars       jarvis!
    Login Alert             O usuário informado não está cadastrado!


***Keywords***
Login With
    [Arguments]             ${user}     ${password}
    Input Text              css:input[name=username]        ${user}
    Input Text              css:input[name=password]        ${password}
    Click Element           class:btn-login

Login Alert
    [Arguments]             ${alert_message}
    ${message}=             Get WebElement                  id:flash
    Should Contain          ${message.text}                 ${alert_message}

Should See Logged user
    [Arguments]             ${full_name}
    Page Should Contain     Olá, ${full_name}. Você acessou a área logada!
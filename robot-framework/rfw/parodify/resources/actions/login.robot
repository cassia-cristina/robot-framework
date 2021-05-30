***Settings***
Documentation       Ações da página de login.


***Keywords***

Open Login
    Open browser    http://parodify.herokuapp.com/users/sign_in    Chromium

Login With
    [Arguments]     ${email}    ${password}
    Fill Text       css=input[name*=email]   ${email}
    Fill Text       css=#user_password       ${password}
    Click           css=input[value='Log in']

Alert Should Be
    [Arguments]     ${message}
    Get Text        css=.is-danger .message-body    ==     ${message}
    
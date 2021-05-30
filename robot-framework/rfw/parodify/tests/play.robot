***Settings***
Documentation       Testando a reprodução de paródias.
Resource            ../resources/base.robot


***Test Cases***
Reproduzir a paródia Bug de Manhã
    Open Login
    Login With      papito@parodify.com    pwd123
    Logout Link Should Be Visible

    Click           css=a[href*=search]
    Get Text        css=h2      equal      Buscar

    Click           xpath=//img[contains(@src,"sertanejo.png")]/..
    Get Text        css=h2      equal      Sertanejo

    Click           xpath=//p[contains(text(),"Marcus e Debug")]/..
    Get Text        css=h2      equal      Músicas

    Click           css=a[data-song$='bugdemanha.mp3']
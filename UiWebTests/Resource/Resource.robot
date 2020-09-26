***Settings***
Library SeleniumLibrary

***Variables***
${URL}          http://automationpractice.com
${BROWSERR}     chrome

***Keywords***
#### Setup e Teardown
Abrir navegador
    Open Browser  ${URL}   ${BROWSERR}

Fechar navegador
    Close Browser
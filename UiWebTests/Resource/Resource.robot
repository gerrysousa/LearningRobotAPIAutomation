***Settings***
Library  SeleniumLibrary

***Variables***
${URL}          http://automationpractice.com
${BROWSERR}     chrome

***Keywords***
#### Setup e Teardown
Abrir navegador
    Open Browser  about:blank   ${BROWSERR}

Fechar navegador
    Close Browser

#### Passo-a-passo
Acessar a página home do site
    Go To  ${URL}
    Title Should Be  My Store

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text  name=search_query   ${PRODUTO}

Clicar no botão pesquisa
    Click Element   name=submit_search
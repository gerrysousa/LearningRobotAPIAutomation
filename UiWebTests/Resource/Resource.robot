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

Conferir se o produto "Blouse" foi listado no site
    Wait Until Element Is Visible   css=#center_column > h1
    Title Should Be     Search - My Store
    Page Should Contain Image   xpath=//*[@id='center_column']//*[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']

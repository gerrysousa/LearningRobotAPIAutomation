***Settings***
Library SeleniumLibrary

***Variables***
${URL}          http://automationpractice.com
${BROWSERR}     chrome

***Test Cases***
Caso de Teste 01: Pesquisar produto existente
    Acessar a página home do site
    Conferir se a pagina home foi exibida
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão pesquisa 
    Conferir se o produto "Blouse" foi lisatado no site

Caso de Teste 02: Pesquisar produto existente
    Acessar a página home do site
    Conferir se a página home foi exibida
    Digitar o nome do produto "itemNaoExistente" no campo de pesquisa
    Clicar no botão pesquisa 
    Conferir se mensagem de erro "No results were found for your search "itemNaoExistente""

***Keywords***

***Settings***
Resource        ../Resource/Resource.robot
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

***Test Cases***
Caso de Teste 01: Pesquisar produto existente
    Acessar a página home do site
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão pesquisa 
    Conferir se o produto "Blouse" foi listado no site

Caso de Teste 02: Pesquisar produto existente
    Acessar a página home do site
    Digitar o nome do produto "itemNaoExistente" no campo de pesquisa
    Clicar no botão pesquisa 
    Conferir mensagem de erro "No results were found for your search "itemNaoExistente""

***Keywords***

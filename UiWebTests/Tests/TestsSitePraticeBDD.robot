***Settings***
Resource        ../Resource/Resource.robot
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

***Test Cases***
Cenário 01: Pesquisar produto existente
    Dado que estou na página home do site
    Quanto eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na página de resultados da busca

Cenário 02: Pesquisar produto existente
    Dado que estou na página home do site
    Quanto eu pesquisar pelo produto "itemNaoExistente"
    Então a página deve exibir a mensagem de erro "No results were found for your search "itemNaoExistente""

***Keywords***

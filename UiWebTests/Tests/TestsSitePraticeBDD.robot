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
    Então a página deve exibir a mensagem 'No results were found for your search "itemNaoExistente"'

***Keywords***
Dado que estou na página home do site
    Acessar a página home do site

Quanto eu pesquisar pelo produto "${PRODUTO}"
    Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Clicar no botão pesquisa

Então o produto "${PRODUTO}" deve ser listado na página de resultados da busca
    Conferir se o produto "${PRODUTO}" foi listado no site

Então a página deve exibir a mensagem '${MENSAGEM_ALERTA}'
    Conferir mensagem de erro "${MENSAGEM_ALERTA}"
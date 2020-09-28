***Settings***
Documentation       Documentacao da API: https://fakerestapi.azurewebsites.net/swagger/ui/index 
Library             RequestsLibrary
Library             Collections

***Variables***
${URL_API}          https://fakerestapi.azurewebsites.net


***Keywords***
### Setup e Teardowns
Conectar a API
    Create Session  fakeAPI     ${URL_API}


### Actions
Requisitar todos os livros
    ${RESPOSTA}     Get Request    fakeAPI     /api/Books
    Log             ${RESPOSTA.text}
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
    Set Test Variable  ${RESPOSTA}

Conferir o status code
    [Arguments]     ${STATUSCODE_DESEJADO}
    Should Be Equal As Strings   ${RESPOSTA.status_code}     ${STATUSCODE_DESEJADO}

Conferir o reason
    [Arguments]     ${REASON_DESEJADO}
    Should Be Equal As Strings   ${RESPOSTA.reason}     ${REASON_DESEJADO}

Conferir se retorna uma lista com "${QTD_LIVROS}" livros
    Length Should Be    ${RESPOSTA.json()}  ${QTD_LIVROS}
***Settings***
Documentation       Documentacao da API: https://fakerestapi.azurewebsites.net/swagger/ui/index 
Resource            ../Resource/ResourceAPI.robot
Suite Setup         Conectar a API


***Test Case***
Buscar a listagem de todos os livros (GET em todos os livros)
    Requisitar todos os livros
    Conferir o status code      200
    Conferir o reason   OK
    Conferir se retorna uma lista com "200" livros

Buscar um livro especifico (GET em um livro especifico)
    Requisitar o livro "15"
    Conferir o status code      200
    Conferir o reason   OK
    Conferir se retorna todos os dados dos livro 15
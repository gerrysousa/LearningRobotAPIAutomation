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

Cadastrar um novo livro (POST)
    Cadastrar um novo livro (padrao)
    Conferir o status code      200
    Conferir o reason   OK
    Conferir se retorna todos os dados dos livro cadastrado 

Alterar informacao de um livro (PUT)
    Alterar o livro "25"
    Conferir o status code      200
    Conferir o reason   OK
    Conferir se os dados dos livro foram alterados 

Deletar um livro especifico (DELETE)
    Deletar o livro "60"
    Conferir o status code      200
    Conferir o reason   OK

Cadastrar um novo livro com parametros (POST)
    Cadastrar um novo livro passando os parametros    2525  "Book Title"  "Book Description"  189  "Book Excerpt"  "2018-09-28T09:31:32.327Z"  
    Conferir o status code      200
    Conferir o reason   OK
    Conferir se retorna todos os dados dos livro cadastrado
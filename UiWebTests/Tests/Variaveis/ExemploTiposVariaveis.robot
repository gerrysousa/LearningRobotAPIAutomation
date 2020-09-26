***Settings***
Documentation  Exemplo de tipos de variaveis: SIMPLES, LISTAS e DICIONARIOS

***Variables***
#Simples
${GLOBAL_SIMPLES}

#Tipo Listas
@{FRUTAS}  morango  banana  abacate  uva  abacaxi

#Tipo Dicionario
&{PESSOA}  nome=Gerry Sousa  email=gerry@email.com  idade=31  sexo=masculino

***Test Cases***
Caso de teste de exemplo 01
    Uma Keyword qualquer 01


***Keywords***
Uma Keyword qualquer 01
    #Simple
    Log     ${GLOBAL_SIMPLES}
    #Lista
    Log     Tem que ser abacate: ${FRUTAS[2]} e essa tem que ser morango: ${FRUTAS[0]}
    #Dicionario
    Log     Nome: ${PESSOA.nome} e email: ${PESSOA.email}
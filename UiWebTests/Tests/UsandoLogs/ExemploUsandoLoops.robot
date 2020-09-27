*** Settings ***
Documentation   Suíte para exemplificar o uso de LOOPS nos testes
...             Os LOOPS devem ser pouco utilizados, mas tem hora que não tem jeito
...             e precisamos dele mesmo, então vamos ver como é!
...             LOOPS: use com moderação!
...             Infelizmente o Loop FOR ainda não tem uma estrutura keyword-driven
...             Mas o criador do Robot já disse que estão estudando uma solução!

*** Variable ***
@{FRUTAS}    maça  banana  uva  abacaxi

*** Test Case ***
Caso de teste usando REPEAT KEYWORD
    Usando Repeat Keyword
    
Caso de teste usando FOR IN RANGE
    Usando FOR IN RANGE


*** Keywords ***
Usando Repeat Keyword
    Log To Console  ${\n}
    Repeat Keyword  4x  Log To Console  Minha Repeticao da keyword!!!

Usando FOR IN RANGE
    Log To Console  ${\n}
    FOR    ${COUNT}    IN RANGE    1    6
        Log To Console   Meu contador atual é: ${COUNT}. O range será de 1 a 5!
        Log              Meu contador atual é: ${COUNT}. O range será de 1 a 5!       
    END
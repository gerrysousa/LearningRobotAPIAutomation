*** Settings ***
Documentation   Suíte para exemplificar o uso de LOOPS nos testes
...             Os LOOPS devem ser pouco utilizados, mas tem hora que não tem jeito
...             e precisamos dele mesmo, então vamos ver como é!
...             LOOPS: use com moderação!
...             Infelizmente o Loop FOR ainda não tem uma estrutura keyword-driven
...             Mas o criador do Robot já disse que estão estudando uma solução!

*** Variable ***
### Indice              0        1      2     3         4
@{LISTA_DE_FRUTAS}    laranja  banana  uva  abacaxi  morango

*** Test Case ***
Caso de teste usando REPEAT KEYWORD
    Usando Repeat Keyword
    
Caso de teste usando FOR IN RANGE
    Usando FOR IN RANGE

Caso de teste usando FOR IN LISTA
    Usando FOR IN LISTA

Caso de teste usando FOR IN ENUMERATE
    Usando FOR IN ENUMERATE

Caso de teste usando EXIT FOR LOOP
    Usando EXIT FOR LOOP

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

Usando FOR IN LISTA
    Log To Console  ${\n}
    FOR  ${FRUTAS}  IN  @{LISTA_DE_FRUTAS}
        Log To Console     A fruta atual é: ${FRUTAS}! 
        Log                A fruta atual é: ${FRUTAS}! 
    END

Usando FOR IN ENUMERATE
    Log To Console  ${\n}
    FOR     ${INDICE}  ${FRUTAS}  IN ENUMERATE  @{LISTA_DE_FRUTAS}
        Log To Console     A fruta atual é: ${INDICE} --> ${FRUTAS}! 
        Log                A fruta atual é: ${INDICE} --> ${FRUTAS}!
    END

Usando EXIT FOR LOOP
    Log To Console  ${\n}
    FOR     ${INDICE}  ${FRUTAS}  IN ENUMERATE  @{LISTA_DE_FRUTAS}
        Log To Console     A fruta atual é: ${INDICE} --> ${FRUTAS}! 
        Log                A fruta atual é: ${INDICE} --> ${FRUTAS}!
        Exit For Loop If   '${FRUTAS}'=='uva'
    END
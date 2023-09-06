*** Settings ***
#Library          SeleniumLibrary
#Library          FakerLibrary    locale=pt_BR
#Resource         setup_teardown.robot
Test Setup       Log To Console    ${\n}    
Test Teardown    Log To Console    ${\n}    
Library    String
Library    FakerLibrary
Library    SeleniumLibrary

*** Variables ***
${numero}    ${0}

*** Test Cases ***

Exemplo bloco IF 
    IF    ${numero} > 0
        Mostrar mensagem quando o número for maior que zero
        Log    Você está vendo essa mensagem porque o bloco IF foi executado e sua condição é verdadeira    console=True    
    ELSE
        Mostrar mensagem quando o número for menor ou igual a zero
        Log    Você está vendo essa mensagem porque o bloco ELSE corresponde à condição false    console=True
    END    

*** Keywords ***
Mostrar mensagem quando o número for maior que zero
    Log    O número [${numero}] é maior que zero!
    Log To Console    O número [${numero}] é maior que zero

Mostrar mensagem quando o número for menor que zero
    Log    O número [${numero}] é menor que zero!
    Log To Console    O número [${numero}] é menor que zero!

Mostrar mensagem quando o número for menor ou igual a zero
    Log    O número [${numero}] é menor ou igual a zero
    Log To Console    O número [${numero}] é menor ou igual a zero

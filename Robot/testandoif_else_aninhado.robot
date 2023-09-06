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
${numero}    ${-1}

*** Test Cases ***

Exemplo bloco IF - ELSE IF
    IF    ${numero} > 0
        Mostrar mensagem quando o número for maior que zero
        Log    Você está vendo essa mensagem porque o o número [${numero}]    console=True    
    ELSE IF    ${numero} < 0
        Mostrar mensagem quando o número for menor que zero
        Log    Você está vendo essa mensagem porque o [${numero}] é menor que zero    console=True
    ELSE IF    ${numero} == 0
        Mostrar mensagem quando o número for menor ou igual a zero
        Log    Você está vendo essa mensagem porque o número [${numero}] é igual a zero!!! console=True.
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
    Log To Console    O número [${numero}] é menor ou igual a zero!

Mostrar mensagem quando o número for igual a zero
    Log    O número [${numero}] é igual a zero
    Log To Console    O número [${numero}] é igual a zero!

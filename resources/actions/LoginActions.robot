*Settings*
Documentation    Ações da tela de login de usuário

Library    Collections

*Variables*
${INPUT_EMAIL}    id=email       
${INPUT_SENHA}    id=password    
${ERROR}          css=.error

*Keywords*
Ir para a tela de login
    Go to    ${urlBase} 

    Wait For Elements State    css=.login-form    visible    5

Preencher as credenciais
    [Arguments]    ${user}

    Fill Text    ${INPUT_EMAIL}    ${user}[email]
    Fill Text    ${INPUT_SENHA}    ${user}[senha]

Submeter o Formulário
    Click    css=.submit-button >> text=Entrar

Validar login do usuário
    [Arguments]    ${user}

    ${element}    Set Variable    css=a[href="/profile"]

    Wait For Elements State    ${element}    visible    5
    Get Text                   ${element}    equal      ${user}[nome] ${user}[sobrenome]

Email Inválido
    Get Property    ${INPUT_EMAIL}    type    equal    email
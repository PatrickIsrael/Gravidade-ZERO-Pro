*Settings*
Documentation    Arquivo de apoio

*Keywords*
Registrar Usuario por Insert

    [Arguments]    ${user}

    Conectar ao Banco de dados
    Inserir Usuario               ${user}
    Disconnect From Database

Logar com Usuario
    [Arguments]    ${user}

    Ir para a tela de login
    Preencher as credenciais    ${user}
    Submeter o Formulário
    Validar login do usuário    ${user}
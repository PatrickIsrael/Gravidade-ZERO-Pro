*Settings*
Documentation    Suite de Testes da tela de login de usuário

Resource    ${EXECDIR}/resources/Base.robot

Test Setup       Acessar Página Web
Test Teardown    Tirar Print

*Test Cases*
Logar com usuário válido

    ${user}    Get Usuario    login

    Ir para a tela de login
    Preencher as credenciais    ${user}
    Submeter o Formulário
    Validar login do usuário    ${user}


Logar com usuário inválido

    ${user}    Create Dictionary    email=patrickisrael@teste.com.br    senha=teste123

    Ir para a tela de login
    Preencher as credenciais     ${user}
    Submeter o Formulário
    Verificar Modal de Alerta    Usuário e/ou senha inválidos.

Logar com usuário inexistente

    ${user}    Create Dictionary    email=patrickisrael1@dev.com.br    senha=teste123

    Ir para a tela de login
    Preencher as credenciais     ${user}
    Submeter o Formulário
    Verificar Modal de Alerta    Usuário e/ou senha inválidos.

Logar com email inválido

    ${user}    Create Dictionary    email=patrickisrael.com.br    senha=teste123

    Ir para a tela de login
    Preencher as credenciais    ${user}
    Submeter o Formulário
    Email Inválido

Email obrigatório
    [Tags]    campos_obrigatorios

    ${user}    Create Dictionary    email=${EMPTY}    senha=teste123

    Ir para a tela de login
    Preencher as credenciais    ${user}
    Submeter o Formulário
    Verificar Alerta de erro    E-mail obrigatório

Senha obrigatória
    [Tags]    campos_obrigatorios

    ${user}    Create Dictionary    email=patrickisrael@teste.com.br    senha=${EMPTY}

    Ir para a tela de login
    Preencher as credenciais    ${user}
    Submeter o Formulário
    Verificar Alerta de erro    Senha obrigatória

Credenciais obrigatórias
    [Tags]    campos_obrigatorios

    @{expected_alerts}    Create List
    ...                   E-mail obrigatório
    ...                   Senha obrigatória

    Ir para a tela de login
    Submeter o Formulário
    Validar Lista de Alertas    ${expected_alerts}
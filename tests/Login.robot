*Settings*
Documentation    Suite de Testes da tela de login de usuário

Resource    ${EXECDIR}/resources/Base.robot

Test Setup       Acessar Página Web
Test Teardown    Encerrar Sessão

*Test Cases*
Logar com usuário válido

    ${user}    Usuario Login

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
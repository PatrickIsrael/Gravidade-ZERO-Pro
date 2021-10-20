*Settings*
Documentation    Suite de Testes da tela de cadastro de usuário

Resource    ${EXECDIR}/resources/Base.robot

Test Setup       Acessar Página Web
Test Teardown    Encerrar Sessão

*Test Cases
Cadastrar usuário

    [Tags]    fluxo_princial

    ${user}    Usuario Valido

    Ir para o Formulário de cadastro
    Preencher os campos de cadastro     ${user} 
    Clicar em Cadastrar
    Verificar Mensagem de Sucesso

E-mail duplicado

    [Tags]    email_dup

    ${user}    Usuario Valido

    Registrar Usuario    ${user} 

    Ir para o Formulário de cadastro
    Preencher os campos de cadastro     ${user} 
    Clicar em Cadastrar
    Verificar Modal de Alerta           Já temos um usuário com o e-mail informado.
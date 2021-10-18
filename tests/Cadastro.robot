*Settings*
Documentation    Suite de Testes da tela de cadastro de usuário

Resource    ${EXECDIR}/resources/Base.robot

Test Setup       Acessar Página Web
Test Teardown    Encerrar Sessão

*Test Cases
Cadastrar usuário

    ${user}    Usuario Valido

    Ir para o Formulário de cadastro
    Preencher os campos de cadastro     ${user} 
    Clicar em Cadastrar
    Verificar Mensagem de Sucesso
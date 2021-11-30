*Settings*
Documentation    Suite de Testes da tela de cadastro de usuário

Resource    ${EXECDIR}/resources/Base.robot

Test Setup       Acessar Página Web
Test Teardown    Encerrar Sessão

*Test Cases*
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

    Registrar Usuario por Insert    ${user} 

    Ir para o Formulário de cadastro
    Preencher os campos de cadastro     ${user} 
    Clicar em Cadastrar
    Verificar Modal de Alerta           Já temos um usuário com o e-mail informado.

E-mail com formato incorreto

    [Tags]    email_inv

    ${user}    Usuario Email Invalido

    Ir para o Formulário de cadastro
    Preencher os campos de cadastro     ${user} 
    Clicar em Cadastrar
    Verificar Alerta de erro            O email está estranho

Campos obrigatórios

    [Tags]    campos_obrigatorios

    @{expected_alerts}    Create List
    ...                   Cadê o seu nome?
    ...                   E o sobrenome?
    ...                   O email é importante também!
    ...                   Agora só falta a senha!

    Ir para o Formulário de cadastro
    Clicar em Cadastrar
    Validar Lista de Alertas            ${expected_alerts}

Senha muito curta
    [Tags]    senha_curta

    [Template]    Validação Senha
    1
    1a
    1ab
    12pa
    At345

*Keywords*
Validação Senha
    [Arguments]    ${senha}

    ${user}    Create Dictionary
    ...        nome=Patrick         sobrenome=Ferreira    email=patrick@teste.com    senha=${senha} 

    Ir para o Formulário de cadastro
    Preencher os campos de cadastro     ${user} 
    Clicar em Cadastrar
    Verificar Alerta de erro            Informe uma senha com pelo menos 6 caracteres

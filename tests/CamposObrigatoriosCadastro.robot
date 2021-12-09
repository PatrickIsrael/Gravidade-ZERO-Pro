*Settings*
Documentation    Suite de teste dos campos obrigatórios do cadastro de usuário

Resource    ${EXECDIR}/resources/Base.robot

Suite Setup      Cadastrar Usuário Vazio
Test Teardown    Tirar Print


*Test Cases*
Nome em Branco
    Verificar Alerta de erro    Cadê o seu nome?

Sobrenome em Branco
    Verificar Alerta de erro    E o sobrenome?

Email em Branco
    Verificar Alerta de erro    O email é importante também!

Senha em Branco
    Verificar Alerta de erro    Agora só falta a senha!


*Keywords*
Cadastrar Usuário Vazio
    Acessar Página Web
    Ir para o Formulário de cadastro
    Clicar em Cadastrar
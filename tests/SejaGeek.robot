*Settings*
Documentation    Suite de Testes da tela de criação de geek

Resource    ${EXECDIR}/resources/Base.robot

Test Setup       Acessar Página Web
Test Teardown    Tirar Print

*Test Cases*
Seja um Geek
    [Tags]    fluxo_princial

    ${user}    Get Usuario    geek

    Logar com Usuario                ${user}
    Ir para Tela de Cadastro Geek
    Preencher Formulario Geek        ${user}[formulario_geek]
    Clicar Quero Ser um Geek
    Verificar Mensagem de Sucesso    Seu cadastro está na nossa lista de geeks. Agora é só ficar de olho no seu WhatsApp.

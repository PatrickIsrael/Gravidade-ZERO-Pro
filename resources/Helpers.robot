*Settings*
Documentation    Arquivo de apoio

*Keywords*
Registrar Usuario

    [Arguments]    ${user}

    Ir para o Formulário de cadastro
    Preencher os campos de cadastro     ${user} 
    Clicar em Cadastrar
    Verificar Mensagem de Sucesso
    Click                               css=a[href="/"] >> text=Voltar
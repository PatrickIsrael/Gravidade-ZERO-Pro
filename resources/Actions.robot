*Settings*
Documentation    Ações do Sistema

*Keywords*
Ir para o Formulário de Cadastro
    Click                      xpath=//a[@href='/signup']
    Wait For Elements State    css=.signup-form

Preencher os Campos de Cadastro
    [Arguments]    ${user}

    Fill Text    id=name        ${user}[nome]
    Fill Text    id=lastname    ${user}[sobrenome]
    Fill Text    id=email       ${user}[email]
    Fill Text    id=password    ${user}[senha]

Clicar em Cadastrar
    Click    css=.submit-button >> text=Cadastrar

Verificar Mensagem de Sucesso
    ${expect_mensagem}    Set Variable    Agora você faz parte da Getgeeks. Tenha uma ótima experiência.

    Wait For Elements State    css=p >> text=${expect_mensagem}    Visible    5

Verificar Modal de Alerta
    [Arguments]         ${expect_mensagem}
    ${modal_element}    Set Variable          css=.swal2-html-container    
    ${modal_title}      Set Variable          css=.swal2-title             

    Wait For Elements State    ${modal_title}    Visible    5
    Get Text                   ${modal_title}    equal      Oops...    

    Wait For Elements State    ${modal_element}    Visible    5
    Get Text                   ${modal_element}    equal      ${expect_mensagem}    
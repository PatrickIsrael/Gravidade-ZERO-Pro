*Settings*
Documentation    Ações da tela de cadastro de usuário

Library    Collections

*Keywords*
Ir para o Formulário de Cadastro
    Go To                      ${urlBase}/signup
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


Verificar Alerta de erro
    [Arguments]    ${expect_alert}

    Wait For Elements State    css=span[class='error'] >> text=${expect_alert}    Visible    5

Validar Lista de Alertas
    [Arguments]    ${expected_alerts}

    @{got_alerts}    Create List

    ${spans}    Get Elements    css=span[class='error']

    FOR    ${span}    IN    @{spans} 

    ${text}           Get Text         ${span}
    Append To List    ${got_alerts}    ${text} 

    END

    Lists Should Be Equal    ${expected_alerts}    ${got_alerts}
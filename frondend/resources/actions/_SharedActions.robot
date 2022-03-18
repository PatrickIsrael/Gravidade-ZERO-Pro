*Settings*
Documentation    Actions compartilhadas


*Keywords*

Verificar Modal de Alerta
    [Arguments]         ${expect_mensagem}
    ${modal_element}    Set Variable          css=.swal2-html-container    
    ${modal_title}      Set Variable          css=.swal2-title             

    Wait For Elements State    ${modal_title}    Visible    5
    Get Text                   ${modal_title}    equal      Oops...    

    Wait For Elements State    ${modal_element}    Visible    5
    Get Text                   ${modal_element}    equal      ${expect_mensagem}    

Verificar Alerta de erro
    [Arguments]    ${expect_alert}

    Wait For Elements State    css=span[class='error'] >> text=${expect_alert}    Visible    5

Verificar Mensagem de Sucesso
    [Arguments]    ${expect_mensagem}    

    Wait For Elements State    css=p >> text=${expect_mensagem}    Visible    5
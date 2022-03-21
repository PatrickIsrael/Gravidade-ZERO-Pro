*Settings*
Documentation    Ações da tela de criação de geek

*Keywords*
Ir para Tela de Cadastro Geek
    Click                      css=a[href='/be-geek'] >> text=Seja um Geek
    Wait For Elements State    css=.be-geek-form

Preencher Formulario Geek
    [Arguments]    ${formulario_geek}

    Fill text    id=whatsapp    ${formulario_geek}[whatsapp]
    Fill text    id=desc        ${formulario_geek}[descricao]

    IF                   '${formulario_geek}[conserta_impressora]'
    Select Options By    id=printer_repair                            text    ${formulario_geek}[conserta_impressora]
    END

    IF                   '${formulario_geek}[modelo_trabalho]'
    Select Options By    id=work                                  text    ${formulario_geek}[modelo_trabalho]
    END

    Fill text    id=cost    ${formulario_geek}[valor_hora]

Clicar Quero Ser um Geek
    Click    css=button >> text=Quero ser um Geek
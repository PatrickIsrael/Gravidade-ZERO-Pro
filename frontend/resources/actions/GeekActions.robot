*Settings*
Documentation    Ações da tela de criação de geek

*Keywords*
Ir para Tela de Cadastro Geek
    Click                      css=a[href='/be-geek'] >> text=Seja um Geek
    Wait For Elements State    css=.be-geek-form

Ir para a tela de Geeks
    #Dado que esteja na tela de Geeks
    Click    css=a[href="/geeks"] >> text=Geeks

    Wait For Elements State    css=.title strong >> text=Estes são os Geeks disponíveis.    visible    5

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

Preencher o campo de busca Geeks
    [Arguments]    ${conserta_impressora}    ${termo_busca}

    IF                   '${conserta_impressora}'
    Select Options By    id=printer_repair           value    ${conserta_impressora}
    END

    IF           '${termo_busca}'
    Fill Text    id=desc             ${termo_busca}
    END

Clicar Quero Ser um Geek
    Click    css=button >> text=Quero ser um Geek

Clicar em Buscar
    Click    css=button[type="submit"] >> text=Buscar

Validar Geek
    [Arguments]    ${user}

    ${nome_completo}    Set Variable    ${user}[nome] ${user}[sobrenome]

    ${target_geek}    Get Element    xpath=//strong[contains(text(),"${nome_completo}")]/../../..

    ${work}    Convert To Lower Case    ${user}[formulario_geek][work]

    #Validar os campos
    Get Text    ${target_geek}    contains    Atendimento ${work}
    Get Text    ${target_geek}    contains    ${user}[formulario_geek][desc]
    Get Text    ${target_geek}    contains    ${user}[formulario_geek][cost]

    Set Suite Variable    ${target_geek} 

Validar Alien
    Get Text    ${target_geek}    contains    👽

Validar mensagem de resultado de busca
    Wait For Elements State    css=.search-not-found p >> text=Não encontramos Geeks com o(s) termo(s) informado na busca!    visible    5
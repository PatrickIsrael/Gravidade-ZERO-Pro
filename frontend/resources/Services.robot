*Settings*
Documentation    Camada de serviços para apoio do teste web

Library    RequestsLibrary

**Variables**
${GATEWAY_API}    https://getgeeks-gateway-patrick.herokuapp.com

*Keywords*
Get Token Service
    [Arguments]    ${user}

    #Obter o token
    #Criar dicionário de dados
    ${payload}    Create Dictionary    email=${user}[email]    password=${user}[senha]

    #Enviar Requisição Post para obter o token
    ${response}    POST    ${GATEWAY_API}/sessions    json=${payload}    expected_status=any

    #Recuperar o token e colocar na variável
    ${token}    set variable    Bearer ${response.json()}[token]

    [Return]    ${token} 

Seja um Geek Service
    [Arguments]    ${payload}    ${token}

    ${headers}    Create Dictionary    Authorization=${token}

    ${response}    POST    ${GATEWAY_API}/geeks    json=${payload}    headers=${headers}    expected_status=any

    [return]    ${response}
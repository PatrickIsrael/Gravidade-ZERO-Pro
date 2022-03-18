**Settings**
Documentation    Helpers 

*Keywords*
Get Token
    [Arguments]    ${user}

    #Obter o token
    ${payload}     Create Dictionary    email=${user}[email]    password=${user}[password]
    ${response}    POST Sessions        ${payload} 

    ${token}    set variable    ${EMPTY}

    IF    "200" in "${response}"

    ${token}    set variable    Bearer ${response.json()}[token]
    END

    [Return]    ${token} 

Remove Usuário
    [Arguments]    ${user}

    ${token}    Get Token    ${user}

    IF              "${token}"
    #deletar o usuário
    DELETE Users    ${token} 

    END
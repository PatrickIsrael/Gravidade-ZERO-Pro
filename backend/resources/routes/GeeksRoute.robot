**Settings**
Documentation    Implementação da rota de Geeks

*Keywords*

POST Geeks
    [Arguments]    ${payload}    ${token}

    ${headers}    Create Dictionary    Authorization=${token}

    ${response}    POST    ${GEEK_API}/geeks    json=${payload}    headers=${headers}    expected_status=any

    [return]    ${response}


GET Geeks
    [Arguments]    ${token}

    ${headers}    Create Dictionary    Authorization=${token}

    ${response}    GET    ${GEEK_API}/geeks    headers=${headers}    expected_status=any

    [return]    ${response}
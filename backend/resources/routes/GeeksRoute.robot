**Settings**
Documentation    Implementação da rota de Geeks

*Keywords*

POST Geeks
    [Arguments]    ${payload}    ${token}

    ${heads}    Create Dictionary    Authorization=${token}

    ${response}    POST    ${GEEK_API}/geeks    json=${payload}    headers=${headers}    expected_status=any

    [return]    ${response}
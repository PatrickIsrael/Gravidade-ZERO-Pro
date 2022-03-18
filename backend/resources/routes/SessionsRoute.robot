**Settings**
Documentation    Implementação da rota de Sessions

*Keywords*

POST Sessions
    [Arguments]    ${payload}

    ${response}    POST    ${USER_API}/sessions    json=${payload}    expected_status=any

    [return]    ${response}
**Settings**
Documentation    Implementação da rota de Users

*Keywords*

POST Users
    [Arguments]    ${payload}

    ${response}    POST    ${USER_API}/users    json=${payload}    expected_status=any

    [return]    ${response}

PUT Users
    [Arguments]    ${payload}    ${token}

    ${headers}    Create Dictionary    Authorization=${token}

    ${response}    PUT    ${USER_API}/users    json=${payload}    headers=${headers}    expected_status=any

    [return]    ${response}

DELETE Users
    [Arguments]    ${token}

    ${headers}    Create Dictionary    Authorization=${token}

    ${response}    DELETE    ${USER_API}/users    headers=${headers}    expected_status=any

    [return]    ${response}

GET Users
    [Arguments]    ${token}

    ${headers}    Create Dictionary    Authorization=${token}

    ${response}    GET    ${USER_API}/users    headers=${headers}    expected_status=any

    [return]    ${response}
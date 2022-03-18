*Settings*
Documentation    Suíte que testa a funcionalidade Geek

*Test Cases*
Seja um Geek
    ${user}    Factory Geek User

    #Dado que tenha um usuário comum cadastrado
    Remove Usuário    ${user}
    POST Users        ${user}

    #Quando eu envio uma requisição para se tornar um geek
    ${token}       Get Token     ${user}
    ${response}    POST Geeks    ${user}[geek_profile]    ${token}

    #Então deve retornar 201
    Status Should Be    201    ${response}

    #E quando consulto o usuário
    ${response}    GET Users    ${token}

    #Enão as informações devem corresponder as enviadas
    Should be Equal As Strings    ${user}[name]                            ${response.json()}[name]
    Should be Equal As Strings    ${user}[email]                           ${response.json()}[email]
    Should be Equal As Strings    ${user}[geek_profile][whatsapp]          ${response.json()}[whatsapp]
    Should be Equal As Strings    ${user}[geek_profile][desc]              ${response.json()}[desc]
    Should be Equal As Strings    ${user}[geek_profile][printer_repair]    ${response.json()}[printer_repair]
    Should be Equal As Strings    ${user}[geek_profile][work]              ${response.json()}[work]
    Should be Equal As Strings    ${user}[geek_profile][cost]              ${response.json()}[cost]

    Should be Equal As Strings    None    ${response.json()}[avatar]
    Should be Equal As Strings    True    ${response.json()}[is_geek]
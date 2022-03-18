**Settings**
Documentation    Suíte de testes da rota de Sessions

Resource    ${EXECDIR}/resources/Base.robot

*Test Cases*
Cadastrar Usuário

    ${user}           Factory New User
    Remove Usuário    ${user}

    ${response}         POST Users    ${user} 
    Status Should be    201           ${response} 

    Should Be True    ${response.json()}[id] > 0 

Consultar Usuário

    ${user}       Factory Get User
    POST Users    ${user} 

    ${token}       Get Token    ${user}
    ${response}    GET Users    ${token}

    Status Should be    200    ${response} 

    Should be Equal As Strings    ${user}[name]     ${response.json()}[name]
    Should be Equal As Strings    ${user}[email]    ${response.json()}[email]

    Should be Equal As Strings    None     ${response.json()}[whatsapp]
    Should be Equal As Strings    None     ${response.json()}[avatar]
    Should be Equal As Strings    False    ${response.json()}[is_geek]

Remover Usuário

    ${user}       Factory Get User
    POST Users    ${user} 

    #Deletar usuário
    ${token}            Get Token       ${user}
    ${response}         DELETE Users    ${token}
    Status Should be    204             ${response} 

    #Consultar Usuário para validar a remoção
    ${response}         GET Users    ${token}
    Status Should be    404          ${response} 

Alterar Usuário

    ${user}       Factory Update User
    POST Users    ${user}[cadastro]

    ${token}    Get Token    ${user}[cadastro]

    ${response}    PUT Users    ${user}[alteracao]    ${token}

    Status Should be    200    ${response} 

    ${response}    GET Users    ${token}

    Should be Equal As Strings    ${user}[alteracao][name]        ${response.json()}[name]
    Should be Equal As Strings    ${user}[alteracao][email]       ${response.json()}[email]
    Should be Equal As Strings    ${user}[alteracao][whatsapp]    ${response.json()}[whatsapp]
    Should be Equal As Strings    ${user}[alteracao][avatar]      ${response.json()}[avatar]
    Should be Equal As Strings    False                           ${response.json()}[is_geek]
**Settings**
Documentation    Suíte de testes da rota de Sessions

Resource    ${EXECDIR}/resources/Base.robot

*Variables*
&{senha_invalida}             email=teste.api@teste.com    password=Abc123
&{usuario_inexistente}        email=teste.404@teste.com    password=Teste123
&{email_formato_incorreto}    email=teste.api.com          password=Teste123     
&{email_em_branco}            email=${EMPTY}               password=Teste123
&{sem_email}                  password=Teste123
&{senha_em_branco}            email=teste.api@teste.com    password=${EMPTY} 
&{sem_senha}                  email=teste.api@teste.com

**Test Cases**

Login do Usuário
    ${payload}    Factory User Session    signup
    POST Users    ${payload} 

    ${payload_login}    Factory User Session    login
    ${response}         POST Sessions           ${payload_login}    

    Status Should be    200    ${response} 

    ${size}             Get Length            ${response.json()}[token]
    ${expected_size}    Convert to Integer    140

    Should be Equal    ${expected_size}    ${size}
    Should be Equal    10d                 ${response.json()}[expires_in]

Login do Usuário - validações

    [Template]    Attempt POST Sessions

    ${senha_invalida}             401    Unauthorized       
    ${usuario_inexistente}        401    Unauthorized
    ${email_formato_incorreto}    400    Incorrect email
    ${email_em_branco}            400    Required email
    ${sem_email}                  400    Required email
    ${senha_em_branco}            400    Required pass      
    ${sem_senha}                  400    Required pass      

*Keywords*
Attempt POST Sessions
    [Arguments]    ${payload}    ${status_code}    ${error_message}

    ${response}    POST Sessions    ${payload} 

    Status Should Be    ${status_code}      ${response} 
    Should be Equal     ${error_message}    ${response.json()}[error]
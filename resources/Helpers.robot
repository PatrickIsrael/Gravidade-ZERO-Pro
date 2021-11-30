*Settings*
Documentation    Arquivo de apoio

*Keywords*
Registrar Usuario por Insert

    [Arguments]    ${user}

    Conectar ao Banco de dados
    Inserir Usuario               ${user}
    Disconnect From Database
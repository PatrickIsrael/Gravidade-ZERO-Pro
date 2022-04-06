*Settings*
Documentation    Database Actions

Library    DatabaseLibrary
Library    factories/Usuario.py

*Keywords*
Conectar ao Banco de dados

    Connect To Database    psycopg2                            mqcwdykt                    mqcwdykt
    ...                    w7hOkFsReM6SKXhFnJw3y_sa1tjw9s45    fanny.db.elephantsql.com    5432

Resetar Banco de dados

    Execute SQL String    DELETE FROM public.geeks;
    Execute SQL String    DELETE FROM public.users;

Inserir Usuario
    [Arguments]    ${u}

    ${senha_criptografada}    Crypt Senha    ${u}[senha]

    ${q}    Set Variable    INSERT INTO public.users (name,email,password_hash,is_geek) values ('${u}[nome] ${u}[sobrenome]','${u}[email]','${senha_criptografada}',false)

    Execute SQL String    ${q}

Inserir Usuarios Sementes


    ${users}    Get Usuarios Insert Bd

    FOR    ${user}    IN    @{users}

    Inserir Usuario    ${user} 

    END
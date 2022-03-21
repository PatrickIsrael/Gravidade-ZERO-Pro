*Settings*
Documentation    Suite de Testes da tela de criação de geek

Resource    ${EXECDIR}/resources/Base.robot

Suite Setup      Iniciar Sessao para Tentativa de Seja um Geek
Test Template    Preencher Seja um Geek com campos Invalidos

*Variables*
${descricao_longa}    Realizo instalação de Linux em várias versões: Ubuntu, Mint, Debian, Fedora, OpenSuse, Red Hat Enterprise Linux, CentOS, Slackware, Arch Linux, Gentoo, Mageia e Backtrack / Kali Linux. Além dessas posso realizar instalação de outra versão dependendo da nec
${descricao_curta}    formato teu pc, instalo Windows, faço manutenção de peças e instalo programas..


*Test Cases*
Descrição Longa                    descricao              ${descricao_longa}    A descrição deve ter no máximo 255 caracteres
Descrição Curta                    descricao              ${descricao_curta}    A descrição deve ter no minimo 80 caracteres
Descrição Obrigatória              descricao              ${EMPTY}              Informe a descrição do seu trabalho
Whatsapp Obrigatório               whatsapp               ${EMPTY}              O Whatsapp deve ter 11 digitos contando com o DDD
Whatsapp Curto                     whatsapp               1234567890            O Whatsapp deve ter 11 digitos contando com o DDD
Whatsapp Longo                     whatsapp               123456789012          O Whatsapp deve ter 11 digitos contando com o DDD
Conserta Impressora Obrigatório    conserta_impressora    ${EMPTY}              Por favor, informe se você é um Geek Supremo
Modelo Trabalho Obrigatório        modelo_trabalho        ${EMPTY}              Por favor, selecione o modelo de trabalho
Valor Hora Obrigatório             valor_hora             ${EMPTY}              Valor hora deve ser numérico
Valor Hora Letras                  valor_hora             aaaa                  Valor hora deve ser numérico
Valor Hora Caracteres Especiais    valor_hora             *****                 Valor hora deve ser numérico
Valor Hora Alfanumérico            valor_hora             aa123                 Valor hora deve ser numérico



*Keywords*
Preencher Seja um Geek com campos Invalidos
    [Arguments]    ${key}    ${input_field}    ${expect_mensagem} 

    ${user}    Get Usuario    geek_invalido

    Set To Dictionary    ${user}[formulario_geek]    ${key}    ${input_field}

    Reset Formulario Seja Geek
    Preencher Formulario Geek     ${user}[formulario_geek]
    Clicar Quero Ser um Geek
    Verificar Alerta de erro      ${expect_mensagem} 

    Tirar Print

Iniciar Sessao para Tentativa de Seja um Geek
    ${user}    Get Usuario    geek_invalido

    Acessar Página Web
    Logar com Usuario                ${user}
    Ir para Tela de Cadastro Geek

Reset Formulario Seja Geek
    Execute JavaScript    document.getElementsByClassName("be-geek-form")[0].reset();
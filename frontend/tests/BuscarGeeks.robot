*Settings*
Documentation    Suite de Testes da tela de busca de geeks

Resource    ${EXECDIR}/resources/Base.robot

Test Setup       Acessar Página Web
Test Teardown    Tirar Print

*Test Cases*
Buscar Todos os Geeks Aliens
    #Dado que eu tenha um geek cadastrado
    ${alien}                     Get Usuario    buscar_alien 
    Criar um Geek via serviço    ${alien}       

    #E esteja logado com o buscador
    ${buscador}          Get Usuario     login_buscador 
    Logar com Usuario    ${buscador} 

    #E vou para a tela de geeks
    Ir para a tela de Geeks

    #E Busco um geek
    Preencher o campo de busca Geeks    Sim    conserto qualquer impressora.
    Clicar em Buscar

    #então me retorna corretamente
    Validar Geek     ${alien}    
    Validar Alien


Buscar Todos os Geeks Comuns
    #Dado que eu tenha um geek cadastrado
    ${common}                    Get Usuario    buscar_comum 
    Criar um Geek via serviço    ${common}      

    #E esteja logado com o buscador
    ${buscador}          Get Usuario     login_buscador 
    Logar com Usuario    ${buscador} 

    #E vou para a tela de geeks
    Ir para a tela de Geeks

    #E Busco um geek
    Preencher o campo de busca Geeks    Não    Realizo a instalação de linux
    Clicar em Buscar

    #então me retorna corretamente
    Validar Geek    ${common}    

Buscar Geek inexistente
    #E esteja logado com o buscador
    ${buscador}          Get Usuario     login_buscador 
    Logar com Usuario    ${buscador} 

    #E vou para a tela de geeks
    Ir para a tela de Geeks

    #E Busco um geek
    Preencher o campo de busca Geeks    Sim    Conserto Game Atari e Polistation
    Clicar em Buscar

    #Então a mensagem de geeks não encontrados é apresentada
    Validar mensagem de resultado de busca    
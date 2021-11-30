*Settings*
Documentation    Base dos arquivos de teste

Library    Browser
Library    Collections

Library    factories/Usuario.py

Resource    actions/_SharedActions.robot
Resource    actions/CadastroActions.robot
Resource    actions/LoginActions.robot

Resource    Database.robot
Resource    Helpers.robot
*Variables*

${urlBase}    https://getgeeks-patrick.herokuapp.com

*Keywords*
Acessar Página Web
    New Browser    chromium      headless=false    slowMo=00:00:00
    New Page       ${urlBase}

Encerrar Sessão
    Take Screenshot
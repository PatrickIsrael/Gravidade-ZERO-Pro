*Settings*
Documentation    Base dos arquivos de teste

Library    Browser
Library    factories/Usuario.py

Resource    Actions.robot
Resource    Database.robot
Resource    Helpers.robot

*Keywords*
Acessar Página Web
    New Browser    chromium                                   headless=false
    New Page       https://getgeeks-patrick.herokuapp.com/

Encerrar Sessão
    Take Screenshot
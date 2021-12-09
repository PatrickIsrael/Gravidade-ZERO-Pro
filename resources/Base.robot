*Settings*
Documentation    Base dos arquivos de teste

Library    Browser
Library    Collections

Library    factories/Usuario.py
Library    utils.py

Resource    actions/_SharedActions.robot
Resource    actions/CadastroActions.robot
Resource    actions/LoginActions.robot
Resource    actions/SejaGeekActions.robot

Resource    Database.robot
Resource    Helpers.robot
*Variables*

${urlBase}    https://getgeeks-patrick.herokuapp.com

*Keywords*
Acessar Página Web
    New Browser          ${BROWSER}    headless=${HEADLESS}    slowMo=00:00:00
    New Page             ${urlBase}
    Set Viewport Size    1280          768

Tirar Print
    ${shot_name}       Screenshot Name
    Take Screenshot    fullPage=true      filename=${shot_name}
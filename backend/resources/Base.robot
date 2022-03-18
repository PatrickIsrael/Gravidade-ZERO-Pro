**Settings**

Documentation    Arquivo Base de teste

Library    RequestsLibrary
Library    factories/users.py

Resource    routes/SessionsRoute.robot
Resource    routes/UsersRoute.robot
Resource    routes/GeeksRoute.robot

Resource    Helpers.robot

**Variables**
${USER_API}    https://getgeeks-users-patrick.herokuapp.com
${GEEK_API}    https://getgeeks-geeks-patrick.herokuapp.com
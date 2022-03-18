# API Users

'Ator: Aplicação Web, mobile ou qualquer outro front-end'

# Sessions

#### Cenário: Login do usuário

Dado que o usuário submeteu o formulário de login com dados corretos
Quando faço uma requisição POST para a rota /sessions
Então o status code deve ser igual a 200
E deve retornar o token JWT na resposta 
E esse token deve expirar em 10 dias

#### Cenário: Senha incorreta 

Dado que o usuário submeteu o formilário do login com a senha inválida
Quando faço uma requisição POST para a rota /sessions
Então o status code deve ser igual a 401
E deve retornar a mensagem "Unauthorized"

#### Cenário: Email não cadastrado

Dado que o usuário submeteu o formilário do login com um email não cadastrado
Quando faço uma requisição POST para a rota /sessions
Então o status code deve ser igual a 401
E deve retornar a mensagem "Unauthorized"

#### Cenário: Email no formato incorreto 

Dado que o usuário submeteu o formilário do login com um email no formato incorreto
Quando faço uma requisição POST para a rota /sessions
Então o status code deve ser igual a 400
E deve retornar a mensagem "incorrect email"

#### Cenário: Email não preenchido

Dado que o usuário submeteu o formilário do login com um email em branco
Quando faço uma requisição POST para a rota /sessions
Então o status code deve ser igual a 400
E deve retornar a mensagem "Requered email"

#### Cenário: sem informar o campo email

Dado que o usuário submeteu o formilário do login sem informar o email
Quando faço uma requisição POST para a rota /sessions
Então o status code deve ser igual a 400
E deve retornar a mensagem "Requered email"

#### Cenário: Senha não preenchido

Dado que o usuário submeteu o formilário do login com uma senha em branco
Quando faço uma requisição POST para a rota /sessions
Então o status code deve ser igual a 400
E deve retornar a mensagem "Requered senha"

#### Cenário: sem informar o campo senha

Dado que o usuário submeteu o formilário do login sem informar a senha
Quando faço uma requisição POST para a rota /sessions
Então o status code deve ser igual a 400
E deve retornar a mensagem "Requered senha"
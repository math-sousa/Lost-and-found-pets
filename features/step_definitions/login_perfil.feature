#language: pt

Funcionalidade: Cadastrar perfil
Eu como usuário cadastrado na plataforma
Para poder acessar as funcionalidades 
Quero poder fazer login

# Cenário de teste
Cenário: Login realizado com sucesso
Dado um usuário criado com o email "maria.silva@gmail.com" 
E o usuário com o email "maria.silva@gmail.com" tem a senha "senhadamaria"
E que estou na página de login
Quando preencho o campo "Email" com "maria.silva@gmail.com"
E preencho o campo "Email" com "maria.silva@gmail.com"
E clico em Entrar
Então deverei ser redirecionado para a página principal

# Cenário de teste
Cenário: Login com erro email vazio
Dado que estou na página de login
Quando preencho o campo "Senha" com "senhadamaria"
E deixo o campo "Email" vazio
E clico em Entrar
Então deverei ver a mensagem de erro "É obrigatório informar o email!"

# Cenário de teste
Cenário: Login com erro, senha vazia
Dado que estou na página de login
Quando preencho o campo "Email" com "maria.silva@gmail.com"
E deixo o campo "Senha" vazio
E clico em Entrar
Então deverei ver a mensagem de erro "É obrigatório informar a senha!"

# Cenário de teste
Cenário: Login com erro, email inválido
Dado que estou na página de login
Quando preencho o campo "Email" com "m,,,a#@.com"
E preencho o campo "Senha" com "senhadamaria"
E clico em Entrar
Então deverei ver a mensagem de erro "O email deve ser válido!"

# Cenário de teste
Cenário: Login com erro, email não cadastrado
Dado que não existe um usuário com o email "mariasilva@gmail.com"
E que estou na página de login
Quando preencho o campo "Email" com "mariasilva@gmail.com"
E preencho o campo "Senha" com "senhadamaria"
E clico em Entrar
Então deverei ver a mensagem de erro "Email não cadastrado"

# Cenário de teste
Cenário: Login com erro, senha incorreta 
Dado um usuário criado com o email "maria.silva@gmail.com" 
E o usuário com o email "maria.silva@gmail.com" tem a senha "senhadamaria"
E que estou na página de login
Quando preencho o campo "Email" com "maria.silva@gmail.com"
E preencho o campo "Senha" com "senhadamaria2"
E clico em Entrar
Então deverei ver a mensagem de erro "Email não cadastrado"
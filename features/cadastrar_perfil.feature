#language: pt

Funcionalidade: Cadastrar perfil
Eu como usuário
Para poder acessar a plataforma
Quero poder criar meu perfil

# Cenários de teste
Cenário: Cadastro de perfil com sucesso
Dado que estou na página de cadastro de usuário
Quando preencho o campo "Nome" com "Maria Silva"
Quando preencho o campo "Email" com "maria.silva@gmail.com"
Quando preencho o campo "Telefone" com "11999999999"
Quando preencho o campo "Senha" com "senhadamaria"
E clico em salvar
Então o perfil deve ter sido salvo no banco de dados
E deverei ver a mensagem de sucesso "Perfil criado com sucesso!"

Cenário: Cadastro de perfil com erro, email vazio
Dado que estou na página de cadastro de usuário
Quando preencho o campo "Nome" com "Maria Silva"
Quando preencho o campo "Telefone" com "11999999999"
Quando preencho o campo "Senha" com "senhadamaria"
E deixo o campo "Email" vazio
E clico em salvar
Então deverei ver a mensagem de erro "É obrigatório informar o email!"

Cenário: Cadastro de perfil com erro, nome vazio
Dado que estou na página de cadastro de usuário
Quando preencho o campo "Email" com "maria.silva@gmail.com"
Quando preencho o campo "Telefone" com "11999999999"
Quando preencho o campo "Senha" com "senhadamaria"
E deixo o campo "Nome" vazio
E clico em salvar
Então deverei ver a mensagem de erro "É obrigatório informar o nome!"

Cenário: Cadastro de perfil com erro, senha vazia
Dado que estou na página de cadastro de usuário
Quando preencho o campo "Nome" com "Maria Silva"
Quando preencho o campo "Email" com "maria.silva@gmail.com"
Quando preencho o campo "Telefone" com "11999999999"
E deixo o campo "Senha" vazio
E clico em salvar
Então deverei ver a mensagem de erro "É obrigatório informar a senha!"

Cenário: Cadastro de perfil com erro, telefone vazio
Dado que estou na página de cadastro de usuário
Quando preencho o campo "Nome" com "Maria Silva"
Quando preencho o campo "Email" com "maria.silva@gmail.com"
Quando preencho o campo "Senha" com "senhadamaria"
E deixo o campo "Telefone" vazio
E clico em salvar
Então deverei ver a mensagem de erro "É obrigatório informar o telefone!"

Cenário: Cadastro de perfil com erro, telefone inválido
Dado que estou na página de cadastro de usuário
Quando preencho o campo "Nome" com "Maria Silva"
Quando preencho o campo "Email" com "maria.silva@gmail.com"
Quando preencho o campo "Senha" com "senhadamaria"
E preencho o campo "Telefone" com "ABC*_0"
E clico em salvar
Então deverei ver a mensagem de erro "O telefone deve ser válido!"

Cenário: Cadastro de perfil com erro, com email incorreto
Dado que estou na página de cadastro de usuário
Quando preencho o campo "Nome" com "Maria Silva"
Quando preencho o campo "Telefone" com "11999999999"
Quando preencho o campo "Senha" com "senhadamaria"
E preencho o campo "Email" com "m,,,a#@.com"
E clico em salvar
Então deverei ver a mensagem de erro "O email deve ser válido!"

Cenário: Cadastro de perfil com erro, email já existente no sistema
Dado um usuário criado com o email "maria.silva@gmail.com"
E que estou na página de cadastro de usuário
Quando preencho o campo "Email" com "maria.silva@gmail.com"
Quando preencho o campo "Nome" com "Maria Silva"
Quando preencho o campo "Telefone" com "11999999999"
Quando preencho o campo "Senha" com "senhadamaria"
E clico em salvar
Então deverei ver a mensagem de sucesso "Email já cadastrado!"
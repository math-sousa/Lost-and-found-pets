#language: pt

Funcionalidade: editar perfil
Eu como usuário
Para poder manter meus dados atualizados
Quero conseguir editar e Salvar meu perfil

Cenário: editar nome com sucesso
Dado que eu me cadastrei
E que estou na página meu perfil
Quando preencho o campo "Nome" com "Maria Almeida"
Quando clico em "Salvar"
E que estou na página meu perfil
Então o campo "Nome" deve estar preenchido com "Maria Almeida"

Cenário: editar email com sucesso
Dado que eu me cadastrei
E que estou na página meu perfil
Quando preencho o campo "Email" com "maria.silva2@gmail.com"
Quando clico em "Salvar"
E que estou na página meu perfil
Então o campo "Email" deve estar preenchido com "maria.silva2@gmail.com"

Cenário: editar telefone com sucesso
Dado que eu me cadastrei
E que estou na página meu perfil
Quando preencho o campo "Telefone" com "11999999998"
Quando clico em "Salvar"
E que estou na página meu perfil
Então o campo "Telefone" deve estar preenchido com "11999999998"

Cenário: editar nome com erro, nome vazio
Dado que eu me cadastrei
E que estou na página meu perfil
Quando deixo o campo "Nome" vazio
E clico em "Salvar"
Então deverei ver a mensagem de erro "Nome é um campo obrigatório!"

Cenário: editar email com erro, email vazio
Dado que eu me cadastrei
E que estou na página meu perfil
Quando deixo o campo "Email" vazio
E clico em "Salvar"
Então deverei ver a mensagem de erro "Email é um campo obrigatório!"

Cenário: editar email com erro, email já cadastrado
Dado um usuário criado com o email "maria.silva@gmail.com"
E que eu me cadastrei com o email "maria.antonieta@gmail.com"
E que estou na página meu perfil
Quando preencho o campo "Email" com "maria.silva@gmail.com"
E clico em "Salvar"
Então deverei ver a mensagem de erro "Email já cadastrado!"

Cenário: editar telefone com erro, telefone vazio
Dado que eu me cadastrei
E que estou na página meu perfil
Quando deixo o campo "Telefone" vazio
E clico em "Salvar"
Então deverei ver a mensagem de erro "Telefone é um campo obrigatório!"
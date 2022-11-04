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
E clico em "Salvar"
Então o campo "Telefone" deve estar preenchido com "11999999998"

Cenário: editar senha com sucesso
Dado que eu me cadastrei
E que estou na página meu perfil
Quando preencho o campo "Senha" com "senha123"
E clico em "Salvar"
Então o campo "Senha" deve estar preenchido com "senha123"

Cenário: editar nome com erro, nome vazio
Dado que eu me cadastrei
E que estou na página meu perfil
Quando deixo o campo "Nome" vazio
E clico em "Salvar"
Então deverei ver a mensagem de erro "O nome não pode ser deixado em branco!"

Cenário: editar email com erro, email vazio
Dado que eu me cadastrei
E que estou na página meu perfil
Quando deixo o campo "Email" vazio
E clico em "Salvar"
Então deverei ver a mensagem de erro "O email não pode ser deixado em branco!"

Cenário: editar email com erro, email já cadastrado
Dado que eu me cadastrei
E que estou na página meu perfil
Quando preencho o campo "Email" com "maria.silva@gmail.com"
E clico em "Salvar"
Então deverei ver a mensagem de erro "Este email já está cadastrado!"

Cenário: editar telefone com erro, telefone vazio
Dado que eu me cadastrei
E que estou na página meu perfil
Quando deixo o campo "Telefone" vazio
E clico em "Salvar"
Então deverei ver a mensagem de erro "O teelfone não pode ser deixado em branco!"

Cenário: editar senha com erro, senha vazia
Dado que eu me cadastrei
E que estou na página meu perfil
Quando deixo o campo "Senha" vazio
E clico em "Salvar"
Então deverei ver a mensagem de erro "A senha não pode ser deixada em branco!"
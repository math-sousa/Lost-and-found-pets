#language: pt

Funcionalidade: editar perfil
Eu como usuário
Para poder manter meus dados atualizados
Quero conseguir editar e salvar meu perfil

Cenário: editar nome com sucesso
Dado que estou na página Meu Perfil
E que meu nome de usuário cadastrado é "Maria Almeida"
Quando clico no botão Editar
Quando preencho o campo "Nome" com "Maria Silva"
E clico em "Salvar"
Então o campo "Nome" deve estar preenchido com "Maria Silva"

Cenário: editar email com sucesso
Dado que estou na página Meu Perfil
E que meu email cadastrado é "maria.silva@gmail.com"
Quando clico no botão Editar
Quando preencho o campo "Email" com "maria.silva2@gmail.com"
E clico em "Salvar"
Então o campo "Email" deve estar preenchido com "maria.silva2@gmail.com"

Cenário: editar telefone com sucesso
Dado que estou na página Meu Perfil
E que meu telefone cadastrado é "11999999999"
Quando clico no botão Editar
Quando preencho o campo "Telefone" com "11999999998"
E clico em "Salvar"
Então o campo "Telefone" deve estar preenchido com "11999999998"

Cenário: editar senha com sucesso
Dado que estou na página Meu Perfil
E que minha senha cadastrada é "senhadamaria"
Quando clico no botão Editar
Quando preencho o campo "Senha" com "senha123"
E clico em "Salvar"
Então o campo "Senha" deve estar preenchido com "senha123"

Cenário: editar nome com erro, nome vazio
Dado que estou na página Meu Perfil
E que meu nome de usuário cadastrado é "Maria Almeida"
Quando clico no botão Editar
Quando deixo o campo "Nome" vazio
E clico em "Salvar"
Então deverei ver a mensagem de erro "O nome não pode ser deixado em branco!"

Cenário: editar email com erro, email vazio
Dado que estou na página Meu Perfil
E que meu email cadastrado é "maria.silva@gmail.com"
Quando clico no botão Editar
Quando deixo o campo "Email" vazio
E clico em "Salvar"
Então deverei ver a mensagem de erro "O email não pode ser deixado em branco!"

Cenário: editar email com erro, email já cadastrado
Dado um usuário já cadastrado "maria.silva2@gmail.com" e que estou na página Meu Perfil
E que meu email cadastrado é "maria.silva@gmail.com"
Quando clico no botão Editar
Quando preencho o campo "Email" com "maria.silva2@gmail.com"
E clico em "Salvar"
Então deverei ver a mensagem de erro "Este email já está cadastrado!"

Cenário: editar telefone com erro, telefone vazio
Dado que estou na página Meu Perfil
E que meu telefone cadastrado é "11999999999"
Quando clico no botão Editar
Quando deixo o campo "Telefone" vazio
E clico em "Salvar"
Então deverei ver a mensagem de erro "O teelfone não pode ser deixado em branco!"

Cenário: editar senha com erro, senha vazia
Dado que estou na página Meu Perfil
E que minha senha cadastrada é "senhadamaria"
Quando clico no botão Editar
Quando deixo o campo "Senha" vazio
E clico em "Salvar"
Então deverei ver a mensagem de erro "A senha não pode ser deixada em branco!"
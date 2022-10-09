#language: pt

Funcionalidade: visualizar perfil
Eu como usuário
Para poder visualizar minhas informações cadastradas
Quero poder visualizar meu perfil

Cenário: entrar no perfil
Dado que estou no mural de posts
Quando clico em perfil
Então deverei ver a página de título "MEU PERFIL"

Cenário: visualizar dados
Dado um usuário cadastrado "maria.silva@gmail.com"
E que estou na página meu perfil
Então o campo "Email" deve estar preenchido com "maria.silva@gmail.com"
#language: pt

Funcionalidade: visualizar perfil
Eu como usuário
Para poder visualizar minhas informações cadastradas
Quero poder visualizar meu perfil

Cenário: visualizar dados
Dado que eu me cadastrei com o email "maria.silva@gmail.com"
E que estou na página meu perfil
Então o campo "Email" deve estar preenchido com "maria.silva@gmail.com"
#language: pt

Funcionalidade: listar posts no perfil do usuário
Eu como usuário
Para poder gerenciar os meus posts
Quero conseguir visualizar todos os meus posts no meu perfil

Cenário: Listagem com um post cadastrado
Dado que eu me cadastrei
E que existe um post cadastrado
E que estou na página meu perfil
Então devo ver meu post cadastrado

Cenário: Listagem sem um post cadastrado
Dado que eu me cadastrei
E que estou na página meu perfil
E que não existem posts cadastrados
Então deverei ver a mensagem de erro "Você ainda não tem posts cadastrados"


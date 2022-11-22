#language: pt

Funcionalidade: Deletar comentário
Eu como usuário
Para poder remover meu comentário de circulação
Quero poder deletar meu comentário de um post

Cenário: Comentário deletado com sucesso
Dado que eu me cadastrei
E que não existem posts cadastrados
E que estou na página de mural
E que existe um post cadastrado
E que existe um comentário feito por mim
Quando clico em "Deletar comentário"
Então o comentário deve ser deletado do banco de dados
E deverei ver a mensagem de sucesso "Comentário deletado com sucesso."


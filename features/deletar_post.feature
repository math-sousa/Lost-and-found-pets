#language: pt

Funcionalidade: Deletar post
Eu como usuário
Para poder retirar um post de circulação
Quero poder deletar meu post

Cenário: Deletar meu post com sucesso
Dado que eu me cadastrei
E que existe um post cadastrado
E que estou na página de mural
Quando clico em "Editar post"
E clico em "Deletar post"
Então o post deve ter sido deletado
E deverei ver a mensagem de sucesso "Post deletado com sucesso!"
E deverei ser redirecionado para o mural

Cenário: Deletar post de outro usuário
Dado que eu me cadastrei
E que existe um post cadastrado
E que estou na página de mural
Então não devo ver o botão "Editar post"
E não devo ver o botão "Deletar post"

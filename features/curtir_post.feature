#language: pt

Funcionalidade: Curtir post
Eu como usuário
Para conseguir dar visibilidade a um post
Quero poder curtir um post

Cenário: Curtir um post com sucesso
Dado que eu me cadastrei
E que existe um post cadastrado
E que estou na página de mural
Quando clico em "Curtir"
Então o número de curtidas do post deve ter aumentado
E o número atualizado deve ter sido mostrado
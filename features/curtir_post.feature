#language: pt

Funcionalidade: Curtir post
Eu como usuário
Para conseguir dar visibilidade a um post
Quero poder curtir um post

Cenário: Post sem curtidas
Dado que eu me cadastrei
E que existe um post cadastrado
E que estou na página de mural
Então o número de curtidas do post deve ser 0

Cenário: Curtir um post pela primeira vez com sucesso
Dado que eu me cadastrei
E que existe um post cadastrado
E que estou na página de mural
Quando clico em "Curtir"
Então o número de curtidas do post deve ter aumentado
E o número de curtidas do post deve ser 1

Cenário: Curtir um post pela N-ésima vez com sucesso
Dado que eu me cadastrei
E que existe um post cadastrado
E que já curti um post
Quando clico em "Curtir"
Então o número de curtidas do post deve ser 2

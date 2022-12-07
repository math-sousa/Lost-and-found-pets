#language: pt

Funcionalidade: Colapsar aba de comentários
Eu como usuário
Para que seja mais fácil navegar pelo mural
Gostaria de que a seção de comentários estivesse colapsada e que só descolapsasse ao clicar em um botão no post

Cenário: Aba de comentários começa colapsada
Dado que eu me cadastrei
E que existe um post cadastrado com comentarios
E que estou na página de mural
Então devo ver o link button "Esconder/mostrar comentários"
E não devo ver comentarios

Cenário: Aba de comentários descolapsa com sucesso
Dado que eu me cadastrei
E que existe um post cadastrado com comentarios
E que estou na página de mural
Quando clico em "Esconder/mostrar comentários"
Então devo ver comentarios

Cenário: Quando não há comentários não é possível descolapsar
 Dado que eu me cadastrei
 E que existe um post cadastrado sem comentarios
 E que estou na página de mural
 Então devo ver a mensagem "Este post não possui comentários!"
 E não devo ver o link button "Esconder/mostrar comentários"
 E não deve ter comentarios
#language: pt

Funcionalidade: Visualizar comentários
Eu como usuário
Para que eu possa acessar um comentário meu específico com facilidade
Gostaria de visualizar minha atividade de comentários em uma página

Cenário: Não existem comentários meus cadastrados
Dado que eu me cadastrei
E que estou na página de meus comentários
E que não existem posts cadastrados
Então deverei ver a mensagem de erro "Ainda não há comentários deste usuário."

Cenário: Visualizar o ultimo comentário meu feito com sucesso
Dado que eu me cadastrei
E que existe um post com comentario meu cadastrado com o texto "Cachorro encontrado"
E que estou na página de meus comentários
Então eu devo visualizar um comentario contendo "Cachorro encontrado"

Cenário: Não é possível visualizar comentários de outros usuários na sua página de comentários
Dado que eu me cadastrei
E que existe um post com comentario de outra pessoa cadastrado
E que estou na página de meus comentários
Então deverei ver a mensagem de erro "Ainda não há comentários deste usuário."

Cenário: Visualizar comentários da página de comentários de outro usuário
Dado que eu me cadastrei
E que existe um usuário cadastrado com o email "joao@email.com"
E que existe um post com comentario "Cachorro encontrado" do usuario com email "joao@email.com"
E que estou na página de comentários do usuário com email "joao@email.com"
Então eu devo visualizar um comentario contendo "Cachorro encontrado"

Cenário: Acessar a página de comentários através da página de perfil
Dado que eu me cadastrei
E que estou na página meu perfil
Quando clico em "Comentários"
Então deverei estar na página de meus comentários

Cenário: Acessar a página de comentários através da página de perfil
Dado que eu me cadastrei
E que existe um post com comentario meu cadastrado com o texto "Cachorro encontrado"
E que estou na página de meus comentários
Quando clico no link do meu post
Então deverei estar na página de post
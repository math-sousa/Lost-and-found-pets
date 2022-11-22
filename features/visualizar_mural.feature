#language: pt

Funcionalidade: Visualizar mural
Como usuário
Para conseguir ver os pets achados ou perdidos
Quero poder acessar o mural de posts

Cenário: Acessar página de posts sem se logar
Dado que estou na página de mural
Então deverei ver a mensagem de erro "Você precisa logar-se ou registrar-se antes de continuar."

Cenário: Não existem posts no mural
Dado que eu me cadastrei
E que estou na página de mural
E que não existem posts cadastrados
Então deverei ver a mensagem de erro "Nenhum post cadastrado por enquanto."

Cenário: Cadastro de post com sucesso
Dado que eu me cadastrei
E que estou na página de cadastro de post
Quando preencho o campo "Titulo" com "Cachorro YorkShire perdido em 10/08"
Quando preencho o campo "Descricao" com "Cachorro atende pelo nome de 'Lulu'. Desapareceu no bairro dos laranjais, próximo a Rua Vale do Rio Doce."
Quando preencho o campo "Local" com "São Paulo, SP - Freguesia do Ó"
Quando clico na opção Perdido
E clico em criar
Então ele deve ter sido salvo no banco de dados
E deverei ver o post na página do mural

Cenário: Visualizar o ultimo post com sucesso
Dado que eu me cadastrei
E que existe um post cadastrado
E que estou na página de mural
Então eu devo visualizar o último post cadastrado no banco de dados contendo titulo "Cachorro YorkShire perdido em 10/08" e descricao "Cachorro atende pelo nome de 'Lulu'. Desapareceu no bairro dos laranjais, próximo a Rua Vale do Rio Doce."

Cenário: Acessar a funcionalidade de criar um post
Dado que eu me cadastrei
E que estou na página de mural
Quando clico em "Novo Post"
Então deverei estar na página de criar post

Cenário: Acessar a funcionalidade de perfil
Dado que eu me cadastrei
E que estou na página de mural
Quando clico em "Meu Perfil"
Então deverei estar na página de perfil

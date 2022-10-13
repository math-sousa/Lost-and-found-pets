#language: pt

Funcionalidade: Visualizar mural
Como usuário
Para conseguir ver os pets achados ou perdidos
Quero poder acessar o mural de posts

Cenário: Não existem posts no mural
Dado que estou na página de mural
Quando não existem posts cadastrados
Então deverei ver a mensagem de erro "Nenhum post cadastrado por enquanto"

Cenário: Cadastro de post com sucesso
Dado que estou na página de cadastro de post
Quando preencho o campo "Titulo" com "Cachorro teste1"
Quando preencho o campo "Descricao" com "teste1"
E clico em criar
Então ele deve ter sido salvo no banco de dados
E deverei ver o post na página do mural

Cenário: Visualizar o ultimo post com sucesso
Dado que estou na página de mural
Quando existem posts cadastrados
Então eu devo visualizar o último post cadastrado no banco de dados contendo titulo "Cachorro teste1" e descricao "teste1"

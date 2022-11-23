#language: pt

Funcionalidade: Visualizar perfil
Eu como usuário
Para conseguir as informações de contato de quem criou o post
Gostaria de ter acesso ao perfil do usuário através do nome do criador do post que está no mural

Cenário: Visualizar meu perfil com sucesso
Dado que eu me cadastrei com o nome "Maria", "email "maria.silva@gmail.com" e telefone "12345678" e possuo um post 
E que estou na página de mural
Quando  clico em "Maria"
Então deverei ver "Maria"
Então deverei ver "maria.silva@gmail.com"
Então deverei ver "12345678"

Cenário: Visualizar meu perfil alheio com sucesso
Dado que eu me cadastrei
Dado que há um outro usuario cadastrado que possui um post e seu nome é Mario Silva, email mario.silva@gmail.com e telefone 11888888888
E que estou na página de mural
Quando clico em "Mario Silva"
Então deverei ver "Mario Silva"
Então deverei ver "mario.silva@gmail.com"
Então deverei ver "11888888888"
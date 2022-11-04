#language: pt

Funcionalidade: Logout
Eu como usuário cadastrado na plataforma
Para poder encerrar a minha sessão
Quero poder fazer o logout do meu perfil

Cenário: Logout realizado com sucesso
Dado que eu me cadastrei
E que estou na página meu perfil
Quando clico em "Log out"
Então a minha sessão deve ter sido encerrada
E deverei ser redirecionado para o mural

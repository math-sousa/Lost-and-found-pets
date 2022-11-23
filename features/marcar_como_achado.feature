# language: pt

Funcionalidade: Marcar post de pet perdido como achado 
Eu como usuário
Para poder informar que o pet já foi encontrado
Quero poder marcar um post de pet perdido como achado

Cenário: marcação feita com sucesso
Dado que eu me cadastrei
E que existe um post cadastrado
E que estou na página de mural
Quando clico em "Editar post"
E marco a checkbox Marcar como encontrado
E clico em editar
Então o post deve ter sido salvo no banco de dados como encontrado
E deverei ver o post na página do post
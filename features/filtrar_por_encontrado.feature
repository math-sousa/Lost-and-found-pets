#language: pt

Funcionalidade: Filtrar posts por encontrado
Eu como usuário
Para otimizar a busca de um pet
Quero poder filtrar os post do mural por encontrado

Cenário: filtrar posts por encontrado com sucesso
Dado que eu me cadastrei
E que estou na página de mural
Quando clico em "Mostrar apenas pets já encontrados"
Então deverei apenas posts de pets já encontrados

Cenário: mostrar todos os posts novamente
Dado que eu me cadastrei
E que estou na página de mural
Quando clico em "Mostrar apenas pets já encontrados"
Quando clico em "Mostrar todos os pets"
Então deverei ver todos os posts
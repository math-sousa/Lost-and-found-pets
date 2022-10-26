# language: pt

Funcionalidade: Filtro post tipo pet
Eu como usuário
Para otimizar a busca de um pet
Quero poder filtrar os posts do mural por tipo de animal

Cenário: Filtrar os posts por tipo de animal com sucesso
Dado que eu me cadastrei
E que estou na página de mural
Quando existem posts cadastrados
Quando clico no dropdown "Animal" e seleciono "Cachorro"
E clico em "Filtrar"
Então deverei ver a apenas posts em que o tipo de animal seja cachorro


# language: pt

Feature: Filtro post tipo pet
Eu como usuário
Para otimizar a busca de um pet
Quero poder filtrar os posts do mural por tipo de animal


Cenário: Filtrar os posts por tipo de animal com sucesso
Dado que estou na página de mural de posts
E que exitem posts cadastrados
Quando clico no dropdown "Tipo de animal" 
E clico em "Cachorro"
E clico em "Filtrar"
Então deverei ver a apenas posts em que o tipo de animal seja cachorro


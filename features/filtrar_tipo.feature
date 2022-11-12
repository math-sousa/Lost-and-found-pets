#language: pt
Funcionalidade: Deletar perfil
Eu como usuário
Para otimizar a busca de um pet
Quero poder filtrar os posts do mural por tipo (achado | Perdido)

Cenário: Filtrar por pet achado
Dado que eu me cadastrei
E que existe um post de animal achado
E que existe um post de animal perdido
E que estou na página de mural
Quando selecionar a opção "Encontrado"
Então os mural deve ser filtrado com o tipo "Encontrado"
E o mural deve ser atualizado

Cenário: Filtrar por pet perdido
Dado que eu me cadastrei
E que existe um post de animal perdido
E que existe um post de animal achado
E que estou na página de mural
Quando selecionar a opção "Perdido"
Então os mural deve ser filtrado com o tipo "Perdido"
E o mural deve ser atualizado

Cenário: Remover filtro por tipo
Dado que eu me cadastrei
E que existe um post de animal perdido
E que existe um post de animal achado
E que estou na página de mural
E que filtrei o mural por tipo na opção "Perdido"
Quando selecionar a opção "Todos"
Então os mural não deve ser filtrado por tipo
E o mural deve ser atualizado
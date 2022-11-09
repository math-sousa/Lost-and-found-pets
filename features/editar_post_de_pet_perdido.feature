#language: pt

Funcionalidade: Editar post de pet perdido
Eu como dono de um post
Para poder corrigir possíveis erros e adicionar novas informações
Quero poder editar meu post

Cenário: Acessar página de edição de posts sem se logar
Dado que estou na página de edição do primeiro post
Então deverei ver a mensagem de erro "Você precisa logar-se ou registrar-se antes de continuar."

Cenário: É possível acessar a página de edição de post através do mural
Dado que eu me cadastrei
E que existe um post cadastrado
E que estou na página de mural
Quando clico em "Editar post"
Então deverei estar na página de edição de post

Cenário: Edição de post com sucesso
Dado que eu me cadastrei
E que existe um post cadastrado
E que estou na página de edição do primeiro post
Quando preencho o campo "Titulo" com "Cachorro YorkShire perdido em 10/08"
Quando preencho o campo "Descricao" com "Cachorro atende pelo nome de 'Lulu'. Desapareceu no bairro dos laranjais, próximo a Rua Vale do Rio Doce."
E clico em editar
Então o post deve ter sido salvo no banco de dados com o título "Cachorro YorkShire perdido em 10/08", a descricao "Cachorro atende pelo nome de 'Lulu'. Desapareceu no bairro dos laranjais, próximo a Rua Vale do Rio Doce." e o tipo "perdido"
E deverei ver o post na página do post

Cenário: Edição de post com erro - título vázio
Dado que eu me cadastrei
E que existe um post cadastrado
E que estou na página de edição do primeiro post
Quando preencho o campo "Descricao" com "Cachorro atende pelo nome de 'Lulu'. Desapareceu no bairro dos laranjais, próximo a Rua Vale do Rio Doce."
E deixo o campo "Titulo" vázio
E clico em editar
Então deverei ver a mensagem de erro "Titulo é um campo obrigatório!"

Cenário: Edição de post com erro - título só possui números
Dado que eu me cadastrei
E que existe um post cadastrado
E que estou na página de edição do primeiro post
Quando preencho o campo "Titulo" com "54941105465108"
Quando preencho o campo "Descricao" com "Cachorro atende pelo nome de 'Lulu'. Desapareceu no bairro dos laranjais, próximo a Rua Vale do Rio Doce."
E clico em editar
Então deverei ver a mensagem de erro "Titulo deve possuir caracteres alfabéticos!"

Cenário: Edição de post com erro - título só possui caractéres especiais
Dado que eu me cadastrei
E que existe um post cadastrado
E que estou na página de edição do primeiro post
Quando preencho o campo "Titulo" com "∞ ♫ ♬ ♭ ♮ ♯ ♰ ♱ ✁ ✂ ✃ ✄ ✆ ✇ ✈ ✉ ✌ ✍ ✎ ✏ ✐ ✑ ✒ ✓ ✔ ✕ ✖ ✗ ✘ ✙ ✚ ✛ ✜ ✝ ✞ ✟ ✠ ✡ ✢ ✣ ✤ ✥ ✦ ✧ ✩ ✪ ✫ ✬ ✭ ✮ ✯ ✰ ✱"
Quando preencho o campo "Descricao" com "Cachorro atende pelo nome de 'Lulu'. Desapareceu no bairro dos laranjais, próximo a Rua Vale do Rio Doce."
E clico em editar
Então deverei ver a mensagem de erro "Titulo deve possuir caracteres alfabéticos!"

Cenário: Edição de post com erro - descrição vázia
Dado que eu me cadastrei
E que existe um post cadastrado
E que estou na página de edição do primeiro post
Quando preencho o campo "Titulo" com "Cachorro YorkShire perdido em 10/08"
E deixo o campo "Descricao" vázio
E clico em editar
Então deverei ver a mensagem de erro "Descricao é um campo obrigatório!"

Cenário: Edição de post com erro - descrição só possui números
Dado que eu me cadastrei
E que existe um post cadastrado
E que estou na página de edição do primeiro post
Quando preencho o campo "Titulo" com "Cachorro YorkShire perdido em 10/08"
Quando preencho o campo "Descricao" com "548918165485161816"
E clico em editar
Então deverei ver a mensagem de erro "Descricao deve possuir caracteres alfabéticos!"

Cenário: Edição de post com erro - descrição só possui caractéres especiais
Dado que eu me cadastrei
E que existe um post cadastrado
E que estou na página de edição do primeiro post
Quando preencho o campo "Titulo" com "Cachorro YorkShire perdido em 10/08"
Quando preencho o campo "Descricao" com "∞ ♫ ♬ ♭ ♮ ♯ ♰ ♱ ✁ ✂ ✃ ✄ ✆ ✇ ✈ ✉ ✌ ✍ ✎ ✏ ✐ ✑ ✒ ✓ ✔ ✕ ✖ ✗ ✘ ✙ ✚ ✛ ✜ ✝ ✞ ✟ ✠ ✡ ✢ ✣ ✤ ✥ ✦ ✧ ✩ ✪ ✫ ✬ ✭ ✮ ✯ ✰ ✱"
E clico em editar
Então deverei ver a mensagem de erro "Descricao deve possuir caracteres alfabéticos!"
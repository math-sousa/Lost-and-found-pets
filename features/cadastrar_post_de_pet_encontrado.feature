#language: pt

Funcionalidade: Cadastrar post de pet encontrado
Eu como pessoa que achou um pet
Para poder encontrar o dono do pet
Quero conseguir cadastrar um post no mural de achados

Cenário: Cadastro de post com sucesso
Dado que eu me cadastrei
E que estou na página de cadastro de post
Quando preencho o campo "Titulo" com "Cachorro YorkShire perdido em 10/08"
Quando preencho o campo "Descricao" com "Cachorro atende pelo nome de 'Lulu'. Encontrado no bairro dos laranjais, próximo a Rua Vale do Rio Doce."
Quando clico na opção Pet encontrado
E clico em criar
Então o post de pet encontrado deve ter sido salvo no banco de dados
E deverei ver o post de pet encontrado na página do post

Cenário: Cadastro de post com erro - título vázio
Dado que eu me cadastrei
E que estou na página de cadastro de post
Quando preencho o campo "Descricao" com "Cachorro atende pelo nome de 'Lulu'. Desapareceu no bairro dos laranjais, próximo a Rua Vale do Rio Doce."
Quando clico na opção Pet encontrado
E deixo o campo "Titulo" vázio
E clico em criar
Então deverei ver a mensagem de erro "Titulo é um campo obrigatório!"

Cenário: Cadastro de post com erro - título só possui números
Dado que eu me cadastrei
E que estou na página de cadastro de post
Quando preencho o campo "Titulo" com "54941105465108"
Quando preencho o campo "Descricao" com "Cachorro atende pelo nome de 'Lulu'. Desapareceu no bairro dos laranjais, próximo a Rua Vale do Rio Doce."
Quando clico na opção Pet encontrado
E clico em criar
Então deverei ver a mensagem de erro "Titulo deve possuir caracteres alfabéticos!"

Cenário: Cadastro de post com erro - título só possui caractéres especiais
Dado que eu me cadastrei
E que estou na página de cadastro de post
Quando preencho o campo "Titulo" com "∞ ♫ ♬ ♭ ♮ ♯ ♰ ♱ ✁ ✂ ✃ ✄ ✆ ✇ ✈ ✉ ✌ ✍ ✎ ✏ ✐ ✑ ✒ ✓ ✔ ✕ ✖ ✗ ✘ ✙ ✚ ✛ ✜ ✝ ✞ ✟ ✠ ✡ ✢ ✣ ✤ ✥ ✦ ✧ ✩ ✪ ✫ ✬ ✭ ✮ ✯ ✰ ✱"
Quando preencho o campo "Descricao" com "Cachorro atende pelo nome de 'Lulu'. Desapareceu no bairro dos laranjais, próximo a Rua Vale do Rio Doce."
Quando clico na opção Pet encontrado
E clico em criar
Então deverei ver a mensagem de erro "Titulo deve possuir caracteres alfabéticos!"

Cenário: Cadastro de post com erro - descrição vázia
Dado que eu me cadastrei
E que estou na página de cadastro de post
Quando preencho o campo "Titulo" com "Cachorro YorkShire perdido em 10/08"
Quando clico na opção Pet encontrado
E deixo o campo "Descricao" vázio
E clico em criar
Então deverei ver a mensagem de erro "Descricao é um campo obrigatório!"

Cenário: Cadastro de post com erro - descrição só possui números
Dado que eu me cadastrei
E que estou na página de cadastro de post
Quando preencho o campo "Titulo" com "Cachorro YorkShire perdido em 10/08"
Quando preencho o campo "Descricao" com "548918165485161816"
Quando clico na opção Pet encontrado
E clico em criar
Então deverei ver a mensagem de erro "Descricao deve possuir caracteres alfabéticos!"

Cenário: Cadastro de post com erro - descrição só possui caractéres especiais
Dado que eu me cadastrei
E que estou na página de cadastro de post
Quando preencho o campo "Titulo" com "Cachorro YorkShire perdido em 10/08"
Quando preencho o campo "Descricao" com "∞ ♫ ♬ ♭ ♮ ♯ ♰ ♱ ✁ ✂ ✃ ✄ ✆ ✇ ✈ ✉ ✌ ✍ ✎ ✏ ✐ ✑ ✒ ✓ ✔ ✕ ✖ ✗ ✘ ✙ ✚ ✛ ✜ ✝ ✞ ✟ ✠ ✡ ✢ ✣ ✤ ✥ ✦ ✧ ✩ ✪ ✫ ✬ ✭ ✮ ✯ ✰ ✱"
Quando clico na opção Pet encontrado
E clico em criar
Então deverei ver a mensagem de erro "Descricao deve possuir caracteres alfabéticos!"

Cenário: Cadastro de post com sucesso e voltar para mural 
Dado que eu me cadastrei
E que estou na página de cadastro de post
Quando preencho o campo "Titulo" com "Cachorro YorkShire perdido em 10/08"
Quando preencho o campo "Descricao" com "Cachorro atende pelo nome de 'Lulu'. Encontrado no bairro dos laranjais, próximo a Rua Vale do Rio Doce."
Quando clico na opção Pet encontrado
E clico em criar
E clico em Voltar para mural
Então deverei ver o post de pet encontrado na página do mural  
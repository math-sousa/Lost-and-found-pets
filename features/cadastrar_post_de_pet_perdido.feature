#language: pt

Funcionalidade: Cadastrar post de pet perdido
    Como dono de um pet perdido
    Para poder ser contatado caso alguém o encontre
    Quero conseguir cadastrar um post no mural de perdidos

Cenário: Cadastro de post com sucesso
    Dado que estou na página de cadastro de post
    Quando preencho o campo "Titulo" com "Cachorro YorkShire perdido em 10/08"
    Quando preencho o campo "Descricao" com "Cachorro atende pelo nome de 'Lulu'. Desapareceu no bairro dos laranjais, próximo a Rua Vale do Rio Doce."
    E clico em criar
    Então ele deve ter sido salvo no banco de dados
    E deverei ver o post na página do post

Cenário: Cadastro de post com erro - título vázio
    Dado que estou na página de cadastro de post
    Quando preencho o campo "Descricao" com "Cachorro atende pelo nome de 'Lulu'. Desapareceu no bairro dos laranjais, próximo a Rua Vale do Rio Doce."
    E deixo o campo "Titulo" vázio
    E clico em criar
    Então deverei ver a mensagem de erro "É obrigatório informar a Descrição!"

Cenário: Cadastro de post com erro - título só possui números
    Dado que estou na página de cadastro de post
    Quando preencho o campo "Titulo" com "54941105465108"
    Quando preencho o campo "Descricao" com "Cachorro atende pelo nome de 'Lulu'. Desapareceu no bairro dos laranjais, próximo a Rua Vale do Rio Doce."
    E clico em salvar
    Então deverei ver a mensagem de erro "Título não pode possuir apenas caracteres numéricos!"

Cenário: Cadastro de post com erro - título só possui caractéres especiais
    Dado que estou na página de cadastro de post
    Quando preencho o campo "Titulo" com "∞ ♫ ♬ ♭ ♮ ♯ ♰ ♱ ✁ ✂ ✃ ✄ ✆ ✇ ✈ ✉ ✌ ✍ ✎ ✏ ✐ ✑ ✒ ✓ ✔ ✕ ✖ ✗ ✘ ✙ ✚ ✛ ✜ ✝ ✞ ✟ ✠ ✡ ✢ ✣ ✤ ✥ ✦ ✧ ✩ ✪ ✫ ✬ ✭ ✮ ✯ ✰ ✱"
    Quando preencho o campo "Descricao" com "Cachorro atende pelo nome de 'Lulu'. Desapareceu no bairro dos laranjais, próximo a Rua Vale do Rio Doce."
    E clico em criar
    Então deverei ver a mensagem de erro "Título não pode possuir somente caracteres especiais!"

Cenário: Cadastro de post com erro - descrição vázia
    Dado que estou na página de cadastro de post
    Quando preencho o campo "Titulo" com "Cachorro YorkShire perdido em 10/08"
    E deixo o campo "Descricao" vázio
    E clico em criar
    Então deverei ver a mensagem de erro "É obrigatório informar o Título!"

Cenário: Cadastro de post com erro - descrição só possui números
    Dado que estou na página de cadastro de post
    Quando preencho o campo "Titulo" com "Cachorro YorkShire perdido em 10/08"
    Quando preencho o campo "Descricao" com "548918165485161816"
    E clico em criar
    Então deverei ver a mensagem de erro "Descrição não pode possuir apenas caracteres numéricos!"

Cenário: Cadastro de post com erro - descrição só possui caractéres especiais
    Dado que estou na página de cadastro de post
    Quando preencho o campo "Titulo" com "Cachorro YorkShire perdido em 10/08"
    Quando preencho o campo "Descricao" com "∞ ♫ ♬ ♭ ♮ ♯ ♰ ♱ ✁ ✂ ✃ ✄ ✆ ✇ ✈ ✉ ✌ ✍ ✎ ✏ ✐ ✑ ✒ ✓ ✔ ✕ ✖ ✗ ✘ ✙ ✚ ✛ ✜ ✝ ✞ ✟ ✠ ✡ ✢ ✣ ✤ ✥ ✦ ✧ ✩ ✪ ✫ ✬ ✭ ✮ ✯ ✰ ✱"
    E clico em criar
    Então deverei ver a mensagem de erro "Descrição não pode possuir apenas caracteres especiais!"
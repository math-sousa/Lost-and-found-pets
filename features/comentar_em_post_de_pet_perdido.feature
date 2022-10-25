#language: pt

Funcionalidade: Comentar em post de pet perdido
Eu como alguém que encontrou um pet
Para que possa encontrar em contato com o dono de um pet
Quero poder comentar em um post de pet perdido

Cenário: Criação de comentário com sucesso
Dado que eu me cadastrei
E que existe um post cadastrado
E que estou na página de mural
Quando preencho o campo "Comentario" com "Creio ter visto esse cachorro na Rua Vale do Rio Doce alguns minutos atrás."
E clico em enviar
Então deverei ver que o comentário contendo "Creio ter visto esse cachorro na Rua Vale do Rio Doce alguns minutos atrás."

Cenário: Criação de comentário sem sucesso - somente números
Dado que eu me cadastrei
E que existe um post cadastrado
E que estou na página de mural
Quando preencho o campo "Comentario" com "4548484848484"
E clico em enviar
Então deverei ver a mensagem de erro "comentário deve possuir caracteres alfabéticos"

Cenário: Criação de comentário sem sucesso - somente caracteres especiais
Dado que eu me cadastrei
E que existe um post cadastrado
E que estou na página de mural
Quando preencho o campo "Comentario" com "∞ ♫ ♬ ♭ ♮ ♯ ♰ ♱ ✁ ✂ ✃ ✄ ✆ ✇ ✈ ✉ ✌ ✍ ✎ ✏ ✐ ✑ ✒ ✓ ✔ ✕ ✖ ✗ ✘ ✙ ✚ ✛ ✜ ✝ ✞ ✟ ✠ ✡ ✢ ✣ ✤ ✥ ✦ ✧ ✩ ✪ ✫ ✬ ✭ ✮ ✯ ✰ ✱"
E clico em enviar
Então deverei ver a mensagem de erro "comentário deve possuir caracteres alfabéticos"

Cenário: Criação de comentário sem sucesso - vázio
Dado que eu me cadastrei
E que existe um post cadastrado
E que estou na página de mural
Quando deixo o campo "Comentario" vázio
E clico em enviar
Então deverei ver a mensagem de erro "comentário não pode estar vázio"

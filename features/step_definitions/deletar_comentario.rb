Dado('que existe um comentário feito por mim') do
    steps %Q{
        Dado que estou na página de cadastro de post
        Quando preencho o campo "Titulo" com "Cachorro YorkShire perdido em 10/08"
        Quando preencho o campo "Descricao" com "Cachorro atende pelo nome de 'Lulu'. Desapareceu no bairro dos laranjais, próximo a Rua Vale do Rio Doce."
        E clico em criar

        Dado que estou na página de mural
        Quando preencho o campo "Comentario" com "Creio ter visto esse cachorro na Rua Vale do Rio Doce alguns minutos atrás."
        E clico em enviar
    }
  end
  
  Então('o comentário deve ser deletado do banco de dados') do
    expect(Comment.where(id: 1).empty?).to be true
  end
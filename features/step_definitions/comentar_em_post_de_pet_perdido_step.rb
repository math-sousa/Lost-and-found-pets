
Dado('que existe um post cadastrado') do
    steps %Q{
        Dado que estou na página de cadastro de post
        Quando preencho o campo "Titulo" com "Cachorro YorkShire perdido em 10/08"
        Quando preencho o campo "Descricao" com "Cachorro atende pelo nome de 'Lulu'. Desapareceu no bairro dos laranjais, próximo a Rua Vale do Rio Doce."
        Quando preencho o campo "Local" com "São Paulo, SP - Freguesia do Ó"
        E clico em criar
    }
end

Quando('clico em enviar') do
    click_on 'Enviar'
end

Então('deverei ver que o comentário contendo {string}') do |string|
    expect(page).to have_content(string)
    expect(page).to have_content("Criado em: #{Time.now.strftime("%d/%m/%Y")}")
    expect(page).to have_content("Nome: #{Perfil.last.name}")
  end
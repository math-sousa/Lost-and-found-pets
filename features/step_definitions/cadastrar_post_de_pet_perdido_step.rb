Dado('que estou na página de cadastro de post') do
    visit '/posts/new'
end

Quando('clico em criar') do
    click_on 'Criar novo post'
end

Então('ele deve ter sido salvo no banco de dados') do
    post = Post.order("id").last
    expect(post.titulo).to eq("Cachorro YorkShire perdido em 10/08")
    expect(post.descricao).to eq("Cachorro atende pelo nome de 'Lulu'. Desapareceu no bairro dos laranjais, próximo a Rua Vale do Rio Doce.")
end

Então('deverei ver o post na página do post') do
    expect(page).to have_content("Cachorro YorkShire perdido em 10/08")
    expect(page).to have_content("Cachorro atende pelo nome de 'Lulu'. Desapareceu no bairro dos laranjais, próximo a Rua Vale do Rio Doce.")
end

Quando('deixo o campo {string} vázio') do |string|
    fill_in string, :with => ""
end

  
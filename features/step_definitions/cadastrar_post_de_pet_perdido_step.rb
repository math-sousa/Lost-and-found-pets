Dado('que estou na página de cadastro de post') do
    visit '/posts/new'
end

Quando('preencho o campo {string} com {string}') do |string, string2|
    fill_in string, :with => string2
end

Quando('clico em criar') do
    click_on 'Criar novo post'
end

Então('ele deve ter sido salvo no banco de dados') do
<<<<<<< HEAD
    post = Post.order("id").last
    expect(post.titulo).to eq("Cachorro YorkShire perdido em 10/08")
    expect(post.descricao).to eq("Cachorro atende pelo nome de 'Lulu'. Desapareceu no bairro dos laranjais, próximo a Rua Vale do Rio Doce.")
    expect(post.animal).to eq("Cachorro")
=======
    expect(Post.last.titulo).to eq("Cachorro YorkShire perdido em 10/08")
>>>>>>> main
end

Então('deverei ver o post na página do post') do
    expect(page).to have_content("Cachorro YorkShire perdido em 10/08")
    expect(page).to have_content("Cachorro atende pelo nome de 'Lulu'. Desapareceu no bairro dos laranjais, próximo a Rua Vale do Rio Doce.")
    expect(page).to have_content("perdido")
end

Quando('deixo o campo {string} vázio') do |string|
    fill_in string, :with => ""
end

Então('deverei ver a mensagem de erro {string}') do |string|
    expect(page).to have_content(string)
end

Quando('clico na opção Perdido') do      
    choose("post_tipo_perdido")
end
  

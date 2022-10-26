
Dado('que existe um post cadastrado') do
    @post = Post.new(:titulo=>'Cachorro YorkShire perdido em 10/08', :descricao=>"Cachorro atende pelo nome de 'Lulu'. Desapareceu no bairro dos laranjais, próximo a Rua Vale do Rio Doce.")
    @post.save
end

Quando('clico em enviar') do
    click_on 'Enviar'
end

Então('deverei ver que o comentário contendo {string}') do |string|
    expect(page).to have_content(string)
  end
require 'database_cleaner/active_record'

Dado('que estou na página de mural') do
    visit '/mural/index'
  end
  
  Dado('que não existem posts cadastrados') do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean 
  end
  
  Então('deverei ver o post na página do mural') do
    expect(page).to have_content("Cachorro YorkShire perdido em 10/08")
    expect(page).to have_content("Cachorro atende pelo nome de 'Lulu'. Desapareceu no bairro dos laranjais, próximo a Rua Vale do Rio Doce.")
  end

  Quando("existem posts cadastrados") do
    @post = Post.new(:titulo=>'Cachorro YorkShire perdido em 10/08', :descricao=>"Cachorro atende pelo nome de 'Lulu'. Desapareceu no bairro dos laranjais, próximo a Rua Vale do Rio Doce.")
    @post.save
  end
  
  Então('eu devo visualizar o último post cadastrado no banco de dados contendo titulo {string} e descricao {string}') do |string, string2|
    post = Post.order("id").last
    expect(post.titulo).to eq(string)
    expect(post.descricao).to eq(string2)
  end

  Quando('clico em {string}') do |string|
    click_on string
  end
  
  Então('deverei estar na página de criar post') do
    expect(page).to have_content("Novo Post")
    expect(page).to have_content("Titulo")
    expect(page).to have_content("Descricao")
  end
  
  Então('deverei estar na página de perfil') do
    expect(page).to have_content("Email")
    expect(page).to have_content("Senha")
  end

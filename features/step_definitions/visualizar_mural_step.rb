Dado('que estou na página de mural') do
    visit '/mural/index'
  end
  
  Quando('não existem posts cadastrados') do
    expect(page).to have_content('Não há posts para serem mostrados por enquanto.')
  end
  
  Então('deverei ver a mensagem de erro {string}') do |string|
    expect(page).to have_content(string)
  end

  Então('deverei ver o post na página do mural') do
    expect(page).to eq("Cachorro teste1")
    expect(page).to eq("teste1")
  end

  Quando('existem posts cadastrados') do
    expect(page).to have_content('Título')
    expect(page).to have_content('Descrição')
  end
  
  Então('eu devo visualizar o último post cadastrado no banco de dados contendo titulo {string} e descricao {string}') do |string, string2|
    posts = Post.order("id").last
    expect(post.titulo).to eq(string)
    expect(post.descricao).to eq(string2)
  end


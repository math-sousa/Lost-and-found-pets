Dado('que estou na página de meus comentários') do
    #find first perfil
    my_id = Perfil.all.first.id
    visit '/perfils/' + my_id.to_s + '/comments'	
  end
  
  Dado('que existe um post com comentario meu cadastrado com o texto {string}') do |string|
    perfil_id = Perfil.all.last.id
    post = Post.new(:titulo => 'titulo', :descricao => 'corpo', :local => 'local', :perfil_id => perfil_id, :tipo => 'perdido', :encontrado => false)
    post.save
    comment = Comment.new(:content => string, :perfil_id => perfil_id, :post_id => post.id)
    comment.save
  end
  
  Então('eu devo visualizar um comentario contendo {string}') do |string|
    expect(page).to have_content(string)
  end
  
  Dado('que existe um post com comentario de outra pessoa cadastrado') do
    perfil = Perfil.new(:email => 'teste@email.com', :name => 'João', :phone => '11999999999', :password => 'senha123', :password_confirmation => 'senha123')
    perfil.save
    post = Post.new(:titulo => 'titulo', :descricao => 'corpo', :local => 'local', :perfil_id => perfil.id, :tipo => 'perdido', :encontrado => false)
    post.save
    comment = Comment.new(:content => 'comentario qualquer', :perfil_id => perfil.id, :post_id => post.id)
    comment.save
  end
  
  Dado('que existe um usuário cadastrado com o email {string}') do |string|
    perfil = Perfil.new(:email => string, :name => 'João', :phone => '11999999999', :password => 'senha123', :password_confirmation => 'senha123')
    perfil.save
  end
  
  Dado('que existe um post com comentario {string} do usuario com email {string}') do |string, string2|
    perfil_id = Perfil.find_by(email: string2).id
    post = Post.new(:titulo => 'titulo', :descricao => 'corpo', :local => 'local', :perfil_id => perfil_id, :tipo => 'perdido', :encontrado => false)
    post.save
    comment = Comment.new(:content => string, :perfil_id => perfil_id, :post_id => post.id)
    comment.save
  end
  
  Dado('que estou na página de comentários do usuário com email {string}') do |string|
    id = Perfil.find_by(email: string).id
    visit '/perfils/' + id.to_s + '/comments'
  end
  
  Então('deverei estar na página de meus comentários') do
    expect(page).to have_content("Comentários")
  end

  Então('deverei estar na página de post') do
    expect(page).to have_content("Post")
  end

  Quando('clico no link do meu post') do
    link_text = 'Post de ' + Perfil.all.last.name
    click_on(link_text)
  end
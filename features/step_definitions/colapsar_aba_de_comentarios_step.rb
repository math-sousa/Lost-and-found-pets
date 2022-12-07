Dado('que existe um post cadastrado com comentarios') do
    perfil_id = Perfil.all.last.id
    post = Post.new(:titulo => 'titulo', :descricao => 'corpo', :local => 'local', :perfil_id => perfil_id, :tipo => 'perdido', :encontrado => false)
    post.save
    comment1 = Comment.new(:content => 'default content 1', :perfil_id => perfil_id, :post_id => post.id)
    comment2 = Comment.new(:content => 'default content 2', :perfil_id => perfil_id, :post_id => post.id)
    comment1.save
    comment2.save
  end
  
  Então('devo ver o link button {string}') do |string|
    expect(page).to have_content(string)
  end
  
  Então('não devo ver comentarios') do
    expect(page).to have_selector('.comment', visible: false)
  end

  Então('não deve ter comentarios') do
    expect(page).to_not have_selector('.comment')
  end
  
  Então('devo ver comentarios') do
    expect(page).to have_selector('.comment', visible: true)
  end
  
  Dado('que existe um post cadastrado sem comentarios') do
    perfil_id = Perfil.all.last.id
    post = Post.new(:titulo => 'titulo', :descricao => 'corpo', :local => 'local', :perfil_id => perfil_id, :tipo => 'perdido', :encontrado => false)
    post.save
  end
  
  Então('devo ver a mensagem {string}') do |string|
    expect(page).to have_content(string)
  end
  
  Então('não devo ver o link button {string}') do |string|
    expect(page).to_not have_content(string)
  end
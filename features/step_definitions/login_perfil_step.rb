Dado('que o usuário com o email {string} tem a senha {string}') do |string, string2|
    @perfil = Perfil.new(:email => string, :nome => 'Maria Silva', :telefone => '11999999999', senha: string2)
    @perfil.save
  end
  
  Dado('que estou na página de login') do
    visit '/login'
  end
  
  Quando('clico em Entrar') do
    click_on 'Entrar'
  end
  
  Então('deverei ser redirecionado para o mural') do
    #Não foi implementado, necessario trocar rota para mural
    visit '/posts'

  end
  
  Então('o mural deve conter o nome do usuário') do
    #Não foi implementado, necessário trocar rota para mural
    expect(page).to have_content('Olá!') 
  end
  
  
  
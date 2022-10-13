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
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então('o mural deve conter o nome do usuário') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Dado('que não existe um usuário com o email {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
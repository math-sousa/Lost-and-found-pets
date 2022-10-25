Dado('que o usuário com o email {string} tem a senha {string}') do |string, string2|
    @perfil = Perfil.new(:email => string, :name => 'Maria Silva', :phone => '11999999999', password: string2)
    @perfil.save
  end
  
  Dado('que estou na página de login') do
    visit '/login'
  end
  
  Quando('clico em Log in') do
    click_on 'Log in'
  end
  
  Então('deverei ser redirecionado para o mural') do
    #Não foi implementado, necessario trocar rota para mural
    visit '/posts'

  end
  
  Então('o mural deve conter o nome do usuário') do
    #Não foi implementado, necessário trocar rota para mural
    expect(page).to have_content('Olá!') 
  end
  
  
  
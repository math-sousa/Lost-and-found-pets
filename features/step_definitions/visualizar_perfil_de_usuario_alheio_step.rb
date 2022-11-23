Dado('que eu me cadastrei com o nome {string}, "email {string} e telefone {string} e possuo um post') do |string, string2, string3|
    steps %Q{
        Dado que estou na página de cadastro de usuário
        Quando preencho o campo "Nome" com "#{string}"
        Quando preencho o campo "Email" com "#{string2}"
        Quando preencho o campo "Telefone" com "#{string3}"
        Quando preencho o campo "Senha" com "senhadamaria"
        Quando preencho o campo "Confirmação de Senha" com "senhadamaria"
        E clico em sign up
    }
    post = FactoryBot.create :post, perfil: Perfil.find(1)
    post.save
  end
  
Então('deverei ver {string}') do |string|
    expect(page).to have_content(string)
end
  
Dado('que há um outro usuario cadastrado que possui um post e seu nome é Mario Silva, email mario.silva@gmail.com e telefone 11888888888') do
    not_my_profile = FactoryBot.create :perfil, :mario
    post = FactoryBot.create :post, perfil: not_my_profile
    post.save
end
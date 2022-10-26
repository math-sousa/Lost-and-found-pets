
Dado('que estou na página de cadastro de usuário') do
    visit '/signup'
end

Quando('clico em sign up') do
    click_on 'Sign up'
end

Então('o perfil deve ter sido salvo no banco de dados') do
    expect(Perfil.last.name).to eq('Maria Silva')
end

Então('deverei ver a mensagem de sucesso {string}') do |string|
    expect(page).to have_content(string)
end

Quando('deixo o campo {string} vazio') do |string|
    fill_in string, :with => ""
end

Dado('um usuário criado com o email {string}') do |string|
    @perfil = Perfil.new(:email => string, :name => 'Maria Silva', :phone => '11999999999', :password => 'senhadamaria', :password_confirmation => 'senhadamaria')
    @perfil.save
end

Dado('que eu me cadastrei') do
    steps %Q{
        Dado que estou na página de cadastro de usuário
        Quando preencho o campo "Nome" com "Maria Silva"
        Quando preencho o campo "Email" com "maria.silva@gmail.com"
        Quando preencho o campo "Telefone" com "11999999999"
        Quando preencho o campo "Senha" com "senhadamaria"
        Quando preencho o campo "Confirmação de Senha" com "senhadamaria"
        E clico em sign up
    }
end

Dado('que eu me cadastrei com o email {string}') do |string|
    steps %Q{
        Dado que estou na página de cadastro de usuário
        Quando preencho o campo "Nome" com "Maria Silva"
        Quando preencho o campo "Email" com "#{string}"
        Quando preencho o campo "Telefone" com "11999999999"
        Quando preencho o campo "Senha" com "senhadamaria"
        Quando preencho o campo "Confirmação de Senha" com "senhadamaria"
        E clico em sign up
    }
end
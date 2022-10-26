Dado('que estou na página Meu Perfil') do
    perfil = Perfil.order("id").last
    visit edit_perfil_registration_path(perfil.id)
end

Dado('que meu nome de usuário cadastrado é {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end

Quando('clico no botão Editar') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end

Dado('que meu email cadastrado é {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end

Dado('que meu telefone cadastrado é {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end

Dado('que minha senha cadastrada é {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end

Dado('um usuário já cadastrado {string} e que estou na página Meu Perfil') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end

Dado('que estou na página de cadastro de usuário') do
    visit '/perfil/new'
end

Quando('preencho o campo {string} com {string}') do |string, string2|
    fill_in string, :with => string2
end

Quando('clico em salvar') do
    click_on 'Salvar'
end

Então('ele deve ter sido salvo no banco de dados') do
    pending # Write code here that turns the phrase above into concrete actions
end

Então('deverei ver a mensagem de sucesso {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end

Quando('deixo o campo {string} vazio') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end

Então('deverei ver a mensagem de erro {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end

Dado('um usuário criado com o email {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end
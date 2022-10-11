
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
    perfil = Perfil.order("id").last
    expect(perfil.nome).to eq('Maria Silva')
    expect(perfil.email).to eq('maria.silva@gmail.com') 
    expect(perfil.telefone).to eq('11999999999') 
    expect(perfil.senha).to eq('senhadamaria') 
end

Então('deverei ver a mensagem de sucesso {string}') do |string|
    expect(page).to have_content(string)
end

Quando('deixo o campo {string} vazio') do |string|
    fill_in string, :with => ""
end

Então('deverei ver a mensagem de erro {string}') do |string|
    expect(page).to have_content(string)
end

Dado('um usuário criado com o email {string}') do |string|
    Factory.create(:minimal_perfil)
end
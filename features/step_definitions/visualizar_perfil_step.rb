Dado('um usuário cadastrado {string}') do |string|
    @perfil = Perfil.new(:email => string, :nome => 'Maria Silva', :telefone => '11999999999', :senha => 'senhadamaria')
    @perfil.save
end

Dado('que estou na página meu perfil') do
    perfil = Perfil.order("id").last
    visit perfil_path(perfil.id)
end

Então('o campo {string} deve estar preenchido com {string}') do |string, string2|
    expect(page).to have_content(string2)
end
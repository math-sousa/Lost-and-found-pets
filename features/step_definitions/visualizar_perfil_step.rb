Dado('que estou na página meu perfil') do
    perfil = Perfil.order("id").last
    visit edit_perfil_registration_path(perfil.id)
end

Então('o campo {string} deve estar preenchido com {string}') do |string, string2|
    expect(page).to have_field(string, with: string2)
end
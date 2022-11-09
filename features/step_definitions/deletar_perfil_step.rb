Então('o perfil deve ser deletado do banco de dados') do
    expect(Perfil.where(email: "maria.silva@gmail.com").empty?).to be true
  end
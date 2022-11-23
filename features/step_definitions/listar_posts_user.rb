Então('devo ver meu post cadastrado') do
    expect(page).to have_content("Cachorro YorkShire perdido em 10/08")
    expect(page).to have_content("Cachorro atende pelo nome de 'Lulu'. Desapareceu no bairro dos laranjais, próximo a Rua Vale do Rio Doce.")
  end

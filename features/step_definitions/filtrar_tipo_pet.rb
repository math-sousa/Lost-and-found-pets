Quando('clico no dropdown {string} e seleciono {string}') do |string, string2|
    select string2, :from => string
  end
  
  Quando('deixo o dropdown {string} vazio') do |string|
    select "", :from => string
  end
  
  Então('deverei ver a apenas posts em que o tipo de animal seja cachorro') do
    expect(page).not_to have_content("Gato")
    expect(page).not_to have_content("Outros")
  end

  Quando('clico em {string}') do |string|
    click_on string
  end
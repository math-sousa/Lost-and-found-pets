Então('deverei apenas posts de pets já encontrados') do
    expect(page).to have_content('Mostrar todos os pets')
end

Então('deverei ver todos os posts') do
    expect(page).to have_content('Mostrar apenas pets já encontrados')
end
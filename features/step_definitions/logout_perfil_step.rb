Então('a minha sessão deve ter sido encerrada') do
    expect(page).to have_content('Saiu da conta com sucesso.') 
end
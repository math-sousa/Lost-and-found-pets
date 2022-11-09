Dado('que estou na página de edição do primeiro post') do
    visit '/posts/1/edit'
end

Quando('clico em editar') do
    click_on 'Edit'
end

Então('deverei estar na página de edição de post') do
    expect(page).to have_current_path('/posts/1/edit')
end
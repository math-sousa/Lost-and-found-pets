Quando('clico na opção Encontrado') do      
    choose("post_tipo_encontrado")
end
  
Então('o post deve ter sido salvo no banco de dados com o título {string}, a descricao {string} e o tipo {string}') do |string, string2, string3|
    post = Post.order("id").last
    expect(post.titulo).to eq(string)
    expect(post.descricao).to eq(string2)
    expect(post.tipo).to eq(string3)
end
  

Então('deverei ver o post de pet encontrado na página do post') do
    expect(page).to have_content("Gato encontrado na Barra Funda.")
    expect(page).to have_content("Gato possui a coleira com o nome de Belinha, por favor me contatar.")
    expect(page).to have_content("encontrado")
end

Quando('clico em Voltar para mural') do
    click_on 'Voltar para o mural'
end

Então('deverei ver o post de pet encontrado na página do mural') do
    expect(page).to have_content("Gato encontrado na Barra Funda.")
    expect(page).to have_content("Gato possui a coleira com o nome de Belinha, por favor me contatar.")
    expect(page).to have_content("encontrado")
end
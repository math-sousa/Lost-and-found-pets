Quando('clico na opção Pet encontrado') do      
    choose("post_tipo_encontrado")
end
  
Então('o post de pet encontrado deve ter sido salvo no banco de dados') do
    post = Post.order("id").last
    expect(post.titulo).to eq("Cachorro YorkShire perdido em 10/08")
    expect(post.descricao).to eq("Cachorro atende pelo nome de 'Lulu'. Encontrado no bairro dos laranjais, próximo a Rua Vale do Rio Doce.")
    expect(post.tipo).to eq("encontrado")
end

Então('deverei ver o post de pet encontrado na página do post') do
    expect(page).to have_content("Cachorro YorkShire perdido em 10/08")
    expect(page).to have_content("Cachorro atende pelo nome de 'Lulu'. Encontrado no bairro dos laranjais, próximo a Rua Vale do Rio Doce.")
    expect(page).to have_content("encontrado")
end

Quando('clico em Voltar para mural') do
    click_on 'Voltar para o mural'
end
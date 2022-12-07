Então('o número de curtidas do post deve ter aumentado') do
    post = Post.order("id").last
    expect(post.curtidas).to eq(1)
end
  
Então('o número atualizado deve ter sido mostrado') do
    expect(page).to have_content("1 Curtida(s)")
end
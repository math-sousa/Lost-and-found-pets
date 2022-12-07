Então('o número de curtidas do post deve ter aumentado') do
    post = Post.order("id").last
    expect(post.curtidas).to eq(1)
end

Então('o número de curtidas do post deve ser {int}') do |int|
    expect(page).to have_content(int.to_s + " Curtida(s)")
end

Dado('que já curti um post') do
    steps %Q{
        E que estou na página de mural
        Quando clico em "Curtir"
    }
end
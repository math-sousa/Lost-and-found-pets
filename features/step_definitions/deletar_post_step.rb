Então('o post deve ter sido deletado') do
    @posts = Post.all
    expect(@posts.count).to be(0)
end

Então('não devo ver o botão {string}') do |string|
    expect(page).not_to have_button(string)
end
  
Quando('marco a checkbox Marcar como encontrado') do
    check('post[encontrado]')
    find('#post_encontrado').should be_checked
end

Então('o post deve ter sido salvo no banco de dados como encontrado') do
    post = Post.order("id").last
    expect(post.encontrado).to eq(true).or eq('1')
end

Então('deverei ver {string} na página do post') do |string|
    expect(page).to have_content(string)
end
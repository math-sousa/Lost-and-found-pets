require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'invalido sem titulo' do
    post = Post.new
    post.descricao = "Alguma descricao."
    expect(post).not_to be_valid
  end

  it 'invalido sem descrição' do
    post = Post.new
    post.titulo = "Algum titulo."
    expect(post).not_to be_valid
  end

  it 'invalido sem local' do
    post = Post.new
    post.titulo = "Algum titulo."
    expect(post).not_to be_valid
  end

  it 'invalido - titulo com formato invalido' do
    post = Post.new
    post.titulo = "∞ ♫ ♬ ♭ ♮ ♯ ♰ ♱ ✁ ✂ ✃ ✄ ✆ ✇ ✈ ✉ ✌ ✍ ✎ ✏ ✐ ✑ ✒ ✓ ✔ ✕ ✖ ✗ ✘ ✙ ✚ ✛ ✜ ✝ ✞ ✟ ✠ ✡ ✢ ✣ ✤ ✥ ✦ ✧ ✩ ✪ ✫ ✬ ✭ ✮ ✯ ✰ ✱"
    post.local = "Algum local."
    post.descricao = "Alguma descricao."   
    expect(post).not_to be_valid
  end

  it 'invalido - descrição com formato invalido' do
    post = Post.new
    post.titulo = "Algum titulo."
    post.local = "Algum local."
    post.descricao = "∞ ♫ ♬ ♭ ♮ ♯ ♰ ♱ ✁ ✂ ✃ ✄ ✆ ✇ ✈ ✉ ✌ ✍ ✎ ✏ ✐ ✑ ✒ ✓ ✔ ✕ ✖ ✗ ✘ ✙ ✚ ✛ ✜ ✝ ✞ ✟ ✠ ✡ ✢ ✣ ✤ ✥ ✦ ✧ ✩ ✪ ✫ ✬ ✭ ✮ ✯ ✰ ✱"   
    expect(post).not_to be_valid
  end

  it 'invalido - local com formato invalido' do
    post = Post.new
    post.titulo = "Algum titulo."
    post.descricao = "Alguma descrição."
    post.local = "∞ ♫ ♬ ♭ ♮ ♯ ♰ ♱ ✁ ✂ ✃ ✄ ✆ ✇ ✈ ✉ ✌ ✍ ✎ ✏ ✐ ✑ ✒ ✓ ✔ ✕ ✖ ✗ ✘ ✙ ✚ ✛ ✜ ✝ ✞ ✟ ✠ ✡ ✢ ✣ ✤ ✥ ✦ ✧ ✩ ✪ ✫ ✬ ✭ ✮ ✯ ✰ ✱"   
    expect(post).not_to be_valid
  end

  it 'curtidas negativas' do
    post = Post.new
    post.titulo = "Algum titulo."
    post.descricao = "Alguma descrição."
    post.local = "Algum local"
    post.curtidas = -1
    expect(post).not_to be_valid
  end
end


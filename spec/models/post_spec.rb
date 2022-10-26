require 'rails_helper'

RSpec.describe Post, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it 'invalido sem titulo' do
    post = Post.new
    post.tipo = 'Cachorro'
    post.descricao = "Alguma descricao."
    expect(post).not_to be_valid
  end

  it 'invalido sem descrição' do
    post = Post.new
    post.tipo = 'Cachorro'
    post.titulo = "Algum titulo."
    expect(post).not_to be_valid
  end

  it 'invalido - titulo com formato invalido' do
    post = Post.new
    post.tipo = 'Cachorro'
    post.titulo = "∞ ♫ ♬ ♭ ♮ ♯ ♰ ♱ ✁ ✂ ✃ ✄ ✆ ✇ ✈ ✉ ✌ ✍ ✎ ✏ ✐ ✑ ✒ ✓ ✔ ✕ ✖ ✗ ✘ ✙ ✚ ✛ ✜ ✝ ✞ ✟ ✠ ✡ ✢ ✣ ✤ ✥ ✦ ✧ ✩ ✪ ✫ ✬ ✭ ✮ ✯ ✰ ✱"
    post.descricao = "Alguma descricao."   
    expect(post).not_to be_valid
  end

  it 'invalido - descrição com formato invalido' do
    post = Post.new
    post.tipo = 'Cachorro'
    post.titulo = "Algum titulo."
    post.descricao = "∞ ♫ ♬ ♭ ♮ ♯ ♰ ♱ ✁ ✂ ✃ ✄ ✆ ✇ ✈ ✉ ✌ ✍ ✎ ✏ ✐ ✑ ✒ ✓ ✔ ✕ ✖ ✗ ✘ ✙ ✚ ✛ ✜ ✝ ✞ ✟ ✠ ✡ ✢ ✣ ✤ ✥ ✦ ✧ ✩ ✪ ✫ ✬ ✭ ✮ ✯ ✰ ✱"   
    expect(post).not_to be_valid
  end

  it 'invalido sem tipo' do
    post = Post.new
    post.titulo = 'abcd'
    post.descricao = "Alguma descricao."
    expect(post).not_to be_valid
  end

end


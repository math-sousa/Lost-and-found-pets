require 'rails_helper'

RSpec.describe Comment, type: :model do

it 'invalido - comentario sem conteudo' do
  comment = Comment.new
  expect(comment).not_to be_valid
end

it 'invalido - comentario contendo somente caracteres especiais' do
  comment = Comment.new
  comment.content = "∞ ♫ ♬ ♭ ♮ ♯ ♰ ♱ ✁ ✂ ✃ ✄ ✆ ✇ ✈ ✉ ✌ ✍ ✎ ✏ ✐ ✑ ✒ ✓ ✔ ✕ ✖ ✗ ✘ ✙ ✚ ✛ ✜ ✝ ✞ ✟ ✠ ✡ ✢ ✣ ✤ ✥ ✦ ✧ ✩ ✪ ✫ ✬ ✭ ✮ ✯ ✰ ✱"   
  expect(comment).not_to be_valid
end

it 'invalido - comentario contendo somente números' do
  comment = Comment.new
  comment.content = "854515151848514"
  expect(comment).not_to be_valid
end

end
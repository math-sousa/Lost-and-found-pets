class Post < ApplicationRecord
    validates :titulo, presence: { message: "é um campo obrigatório!" }, format: { with: /[a-zA-Z]/, message: "deve possuir caracteres alfabéticos!" }
    validates :descricao, presence: { message: "é um campo obrigatório!" }, format: { with: /[a-zA-Z]/, message: "deve possuir caracteres alfabéticos!" } 
end

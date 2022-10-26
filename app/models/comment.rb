class Comment < ApplicationRecord
    belongs_to :post
    validates :content, presence: {message: "comentário não pode estar vázio"}, format: {with: /[a-zA-Z]/, message: "comentário deve possuir caracteres alfabéticos"} 
end

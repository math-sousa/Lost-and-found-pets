class Post < ApplicationRecord
    validates :titulo, presence: { message: "é um campo obrigatório!" }, format: { with: /[a-zA-Z]/, message: "deve possuir caracteres alfabéticos!" }
    validates :descricao, presence: { message: "é um campo obrigatório!" }, format: { with: /[a-zA-Z]/, message: "deve possuir caracteres alfabéticos!" } 
    validates :local, presence: { message: "é um campo obrigatório!" }, format: { with: /[a-zA-Z]/, message: "deve possuir caracteres alfabéticos!" } 

    has_many :comments, dependent: :destroy
    belongs_to :perfil
end

class Post < ApplicationRecord
    validates :titulo, presence: { message: "é um campo obrigatório!" }, format: { with: /[a-zA-Z]/, message: "deve possuir caracteres alfabéticos!" }
    validates :descricao, presence: { message: "é um campo obrigatório!" }, format: { with: /[a-zA-Z]/, message: "deve possuir caracteres alfabéticos!" } 
<<<<<<< HEAD
    validates :animal, presence: { message: "é um campo obrigatório!" } 
    scope :filter_by_animal, -> (animal) { where animal: animal }
=======

    has_many :comments, dependent: :destroy
>>>>>>> main
end

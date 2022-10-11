class Perfil < ApplicationRecord
    validates :nome, presence: {message: "O nome é obrigatório!"}
    validates :email, presence: {message: "O email é obrigatório!"}, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Formato de e-mail inválido!" } 
    validates :senha, presence: {message: "A senha é obrigatória!"}
    validates :telefone, numericality: { only_integer: true }
end
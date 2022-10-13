class Perfil < ActiveRecord::Base
    validates :nome, presence: {message: "O nome é obrigatório!"}
    validates :email, presence: {message: "O email é obrigatório!"}, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Formato de e-mail inválido!" } 
    validates :senha, presence: {message: "A senha é obrigatória!"}
    validates :telefone, numericality: { only_integer: true }

    def self.authenticate(email, senha)
        perfil = find_by_email(email)
        if(perfil && perfil.senha == senha)
            perfil
        else
            nil
        end
    end
end
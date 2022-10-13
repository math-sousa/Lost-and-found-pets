class Perfil < ActiveRecord::Base
    validates :nome, presence: {message: "É obrigatório informar o nome!"}
    validates :email, presence: {message: "É obrigatório informar o email!"}, format: { with: URI::MailTo::EMAIL_REGEXP, message: "O email deve ser válido!" }, uniqueness: {message: "Email já cadastrado!"} 
    validates :senha, presence: {message: "É obrigatório informar a senha!"}
    validates :telefone, presence: {message: "É obrigatório informar o telefone!"}, numericality: { only_integer: true, message: "O telefone deve ser válido!" }

    def self.authenticate(email, senha)
        perfil = find_by_email(email)
        if(perfil && perfil.senha == senha)
            perfil
        else
            nil
        end
    end
end
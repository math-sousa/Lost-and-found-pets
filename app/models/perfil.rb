class Perfil < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :lockable, :timeoutable, :trackable and  :omniauthable
    devise :database_authenticatable, :registerable,
            :recoverable, :rememberable, :validatable
    validates :name, presence:  {message: "O nome não pode ser deixado em branco!"}
    validates :email, presence: {message: "O email não pode ser deixado em branco!"}, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true 
    validates :phone, presence: {message: "O telefone não pode ser deixado em branco!"}, format: { without: /[a-zA-Z]/}
    
end
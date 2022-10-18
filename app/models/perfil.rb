class Perfil < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :lockable, :timeoutable, :trackable and  :omniauthable
    devise :database_authenticatable, :registerable,
            :recoverable, :rememberable, :validatable
    validates :name, presence: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true 
    validates :phone, presence: true, format: { without: /[a-zA-Z]/}
    
end
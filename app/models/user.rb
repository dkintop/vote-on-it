class User < ApplicationRecord
    has_many :votes 
    has_many :subjects, through: :votes 
    validates :email, uniqueness: true, presence: true
    validates :name, presence: true
    validates :password, length: {minimum: 6}
    has_secure_password

    
end

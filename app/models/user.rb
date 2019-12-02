class User < ApplicationRecord
    has_many :votes 
    has_many :subjects, through: :votes 
end

class Subject < ApplicationRecord
    has_many :votes 
    has_many :options 
    has_many :users, through: :votes 

end
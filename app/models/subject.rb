class Subject < ApplicationRecord
    has_many :votes  
    has_many :users, through: :votes
    belongs_to :category 
    
    validates :title, presence: true
    validates :description, presence: true
    accepts_nested_attributes_for :category
end
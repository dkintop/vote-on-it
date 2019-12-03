class Subject < ApplicationRecord
    has_many :votes  
    has_many :users, through: :votes
    belongs_to :category 
    validates :title, :option_1, :option_2, :description, presence: true
    accepts_nested_attributes_for :category


    def options
        options = []
        options << self.option_1
        options << self.option_2
        return options 
    end
end
class Subject < ApplicationRecord
    has_many :votes  
    has_many :users, through: :votes
    belongs_to :category 
    validates :title, :option_1, :option_2, :description, presence: true
    accepts_nested_attributes_for :category


    
    def option_1_count
        count = 0
        Vote.for_subject(self).each do |vote|
           
            if vote.option_choice == self.option_1
                count += 1
           end
           
        end
        count
    end

     def option_2_count
        count = 0
        Vote.for_subject(self).each do |vote|
           
            if vote.option_choice == self.option_2
                count += 1
           end
           
        end
        count
    end

    def winning
        
    end




    def options
        options = []
        options << self.option_1
        options << self.option_2
        return options 
    end
end
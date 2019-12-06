class Subject < ApplicationRecord
    has_many :votes  
    has_many :users, through: :votes
    belongs_to :category 
    validates :title, :option_1, :option_2, :description, presence: true
    accepts_nested_attributes_for :category

    #scope :for_user, ->(user_id) {where("user_id = ?", user_id)}

    def self.not_voted(current_user) #returns collection of subjects that the current user has not voted on
        not_voted = []
        self.all.each do |subject|
            if !subject.users.include?(current_user)
                not_voted << subject
            end 
        end
        not_voted
    end
    
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
        if self.option_1_count > self.option_2_count
            self.option_1
        elsif self.option_2_count > self.option_1_count
            self.option_2
        else
            "Tied!"
        end
    end

    def options
        options = []
        options << self.option_1
        options << self.option_2
        return options 
    end

    def option_1_percentage
        total_votes = self.votes.count
        percentage = (self.option_1_count / total_votes.to_f) * 100
        percentage.to_i 
    end

    def option_2_percentage
        total_votes = self.votes.count
        percentage = (self.option_2_count / total_votes.to_f) * 100
        percentage.to_i 
    end

    def chart_data
        chart_data = []
        chart_data << [self.option_1, self.option_1_count]
        chart_data << [self.option_2, self.option_2_count]
        chart_data

    end

end
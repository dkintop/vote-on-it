class Category < ActiveRecord::Base

    has_many :subjects
    validates :title, presence: true, uniqueness: true
    
        
end

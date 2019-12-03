class Vote < ApplicationRecord
    belongs_to :user 
    belongs_to :subject 
    validates :option_choice,  presence: true
end

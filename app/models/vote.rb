class Vote < ApplicationRecord
    belongs_to :user 
    belongs_to :subject 
    validates :option_choice,  presence: true

    scope :for_subject, ->(subject_id) {where("subject_id = ?", subject_id)}
    #requires a subjects id number as argument

    

end

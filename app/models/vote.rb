class Vote < ApplicationRecord
    belongs_to :user 
    belongs_to :subject 
    validates :option_choice,  presence: true

    scope :for_subject, ->(subject_id) {where("subject_id = ?", subject_id)}
    #requires a subjects id number as argument

    scope :for_user, ->(user_id) {where("user_id = ?", user_id)} #called in users_controller show action

end

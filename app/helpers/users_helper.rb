module UsersHelper

  def user_error_messages
    
    if @user.errors.any?
    @user.errors.full_messages.each do |message|
    
        message
        
        end
    end
    end

end
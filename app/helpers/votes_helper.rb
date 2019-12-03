module VotesHelper

    def error_messages
    
    if @vote.errors.any?
    @vote.errors.full_messages.each do |message|
    
        message
        
        end
    end
end

end

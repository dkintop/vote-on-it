module SubjectsHelper



def error_messages
    
    if @subject.errors.any?
    @subject.errors.full_messages.each do |message|
    
        message
        binding.pry
        end
    end
end




end

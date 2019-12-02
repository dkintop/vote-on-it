class SubjectsController < ApplicationController

    def new 
        #renders /subjects/new (form page)
        @subject = Subject.new
    end

    def create
        binding.pry
    end

private

def subject_params

    params.require(:subject).permit(:title, :category, :description)

end

end

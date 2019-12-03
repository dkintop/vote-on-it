class VotesController < ApplicationController


    def new
        @subject = Subject.find_by_id(params[:subject_id])

        @vote = @subject.votes.build
        
    end

    def create 
        binding.pry
        #create vote that is associated with a subject and a user 
    end

    def index

    end

end

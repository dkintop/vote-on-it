class VotesController < ApplicationController


    def new
        @subject = Subject.find_by_id(params[:subject_id])

        @vote = @subject.votes.build
        
    end

    def create 
       @vote = Vote.new(vote_params)
       if @vote.save
        redirect_to subject_path(@vote.subject_id)
       else
        @subject = Subject.find_by_id(vote_params[:subject_id])
        render :new
       end
    end

    def index
        @votes = Vote.all
    end

    private 

    def vote_params
        params.require(:vote).permit(:option_choice, :subject_id, :user_id)
    end

end

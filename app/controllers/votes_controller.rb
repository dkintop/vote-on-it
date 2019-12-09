class VotesController < ApplicationController


    def new
        @subject = Subject.find_by_id(params[:subject_id])
        @vote = @subject.votes.build
    end

    def create 
       @vote = Vote.new(vote_params)
       save_if_user_has_not_voted #see private
        if @vote.id #calling @vote.id returns false or nil if !@vote.save 
            redirect_to subject_votes_path(@vote.subject_id)
       else
            @subject = Subject.find_by_id(vote_params[:subject_id])
            render :new
       end
    end

    def index 
        if params[:subject_id]
            @subject = Subject.find_by_id(params[:subject_id])
            @votes = @subject.votes
            @chart_data = @subject.chart_data
            flash[:duplicate_vote_error] = nil #clears this error from being repeated. 
        else
            @votes = Vote.all
        end
    end

    private 

    def vote_params
        params.require(:vote).permit(:option_choice, :subject_id, :user_id)
    end


    

    def save_if_user_has_not_voted
        if !@vote.subject.users.include?(current_user)
            @vote.save
        else
            flash[:duplicate_vote_error] = "You already voted on this subject. click here to see votes." #this block checks if the user has already voted on this subject and saves vote if the user has not voted.
        end 
    end

end

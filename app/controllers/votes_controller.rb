class VotesController < ApplicationController


    def new
        @subject = Subject.find_by_id(params[:subject_id])
        @vote = @subject.votes.build
    end

    def create 
       @vote = Vote.new(vote_params)
       
        if !user_voted?
            @vote.save
        else
            flash[:duplicate_vote_error] = "You already voted on this subject. click here to see votes." #this block checks if the user has already voted on this subject and saves vote if the user has not voted.
        end    
        
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
            flash[:duplicate_vote_error] = nil #clears this error from being repeated. Problem with this logic is it only clears it if the user visits the index page. is there a way to set it equal to nil upon navigating to a different page without hardcoding this line into every controller action?
        else
            @votes = Vote.all
        end
    end

    private 

    def vote_params
        params.require(:vote).permit(:option_choice, :subject_id, :user_id)
    end


    def user_voted?
         @vote.subject.users.include?(current_user)
    end

end

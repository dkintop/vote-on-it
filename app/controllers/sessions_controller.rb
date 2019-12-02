class SessionsController < ApplicationController

    def welcome
        
    end

    def new 
        render :login
    end

    def login
        @user = User.find_by(username: params[] )
    end

    def destroy 
        session.delete(:user_id)
        redirect_to '/'
    end

    private 
    def session_params
        params.require(:user).permit(:email, :password)
    end

end
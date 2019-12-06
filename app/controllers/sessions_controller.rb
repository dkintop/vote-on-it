class SessionsController < ApplicationController

    def welcome
        
    end

    def new 
        render :login
    end

    def login
        @user= User.find_by(email: session_params[:email])
        if @user && @user.authenticate(session_params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:error] = "Sorry, username or password was incorrect. Please try again."
            redirect_to login_path
        end
    end

    def destroy 
        session.delete(:user_id)
        redirect_to '/'
    end

    def omniauth
        @user = User.find_or_create_by(email: auth[:email]) 
        @user.password = SecureRandom.hex
        @user.name = auth[:first_name]
        @user.save        
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    end

    
    
    private 
    def session_params
        params.require(:user).permit(:email, :password)
    end

    def auth
        request.env['omniauth.auth'][:info]
    end

    
end

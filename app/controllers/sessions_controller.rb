class SessionsController < ApplicationController 
    skip_before_action :auth_user, only: [:new, :create] 

    def logout 
        session.delete(:user_id)
    end 

    def new
        #login form
    end 

    def create 
        user = User.find_by(username: params[:session][:username])

        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id 
            redirect_to user_path(user)
        else 
            flash[:sign_in_error] = "Username or Password Incorrect"
            redirect_to new_login_path 
        end 
    end 

end 
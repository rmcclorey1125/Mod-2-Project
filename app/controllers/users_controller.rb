class UsersController < ApplicationController

    skip_before_action :auth_user, only: [:new, :create]

    def index
        @users = User.all 
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new 
    end 

    def create 
        @user = User.create(user_params)
        if @user.valid?
            session[:user_id] = @user.id 
            redirect_to user_path(@user)
        else 
            flash[:user_errors] = @user.errors.full_messages
            redirect_to new_user_path 
        end 
    end 

    def follow
        @user = User.find(params[:id])
        if @user.followers.include?(@current_user)
            flash[:follow_error] = "Error: You already follow this user."
            redirect_to user_path(@user)
        else 
            Follow.create(follower_id: @current_user.id, followee_id: params[:id])
            redirect_to user_path(@current_user)
        end 
    end 

    private 

    def user_params 
        params.require(:user).permit(:username, :password, :age)
    end 

end

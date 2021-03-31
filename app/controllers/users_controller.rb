class UsersController < ApplicationController
    before_action :current_user, only: [:show]
    before_action :not_logged_in, only: [:show] 
    
    def index
        @user = User.all
    end

    def new
        @user = User.new
    end

    def create 
        # byebug
        @user = User.new(user_params)
        # if @user.valid_name?
        session[:username] = @user.username
        session[:password] = @user.password
        # else
        redirect_to '/users/:id'
    end

    def show
        # byebug
        # @username = session[:username]
        # @password = session[:password]
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        @user.save
        redirect_to user_path(@user)
    end

    private
    def user_params
        params.require(:user).permit(:username, :password)
    end
end


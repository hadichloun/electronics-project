class UsersController < ApplicationController
    def new
        @user = User.new
        @user.save
    end

    def create 
        @user = User.create(params[:id])
        redirect_to @user
    end

    def show
        # byebug
        @user = User.find(params[:id])
        @users = User.all
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    private
    def user_params
        params.permit(:name)
    end
end


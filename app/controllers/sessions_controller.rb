class SessionsController < ApplicationController

    def new 
        @user = User.new
    end

    def create 
        # byebug
        # find the user using params
        @user = User.find_by(email: params[:user][:email])
        # authenticate 
        # if authenticated 
        if @user && @user.authenticate(params[:user][:password])
        # create a session
        session[:id] = @user.id
        # redirect to user page 
        redirect_to @user
        # else
        else
        # redirect back to form
        flash[:errors] = ['Email or Password is incorrect']
        redirect_to login_path
        end
    end

    def destroy
        session.clear
        redirect_to login_path
    end
end
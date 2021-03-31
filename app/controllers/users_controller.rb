class UsersController < ApplicationController
    def index
        @user = User.all
    end

    def new
        @user = User.new
    end

    def create 
        # byebug
        # create an instance of user
        @user = User.new(user_params)
            # check if valid
        if @user.valid? 
            # if true
            # create session
            @user.save
            session[:id] = @user.id
            redirect_to @user
            # if false
        else
            # show errors
            flash[:errors] = @user.errors.full_messages
            # come back to form
            redirect_to new_user_path
        end
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
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end


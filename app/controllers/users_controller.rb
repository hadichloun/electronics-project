class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new 
        # byebug
        @user = User.new
    end

    def create
        # @user = User.new(user_params)
        @user = User.create(user_params)
        @products = Product.all
        # if @user.save
        if @user.valid?
            redirect_to products_path
        else
            # flash[:errors] = @user.errors.full_messages
            render :show
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find_by(id: params[:id])
        @user.update(user_params)
        @user.save
        redirect_to user_path(@user)
    end
   
    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to new_user_path
    end

    private 

    def user_params
        params.require(:user).permit(:name, :email, :password )
    end
end
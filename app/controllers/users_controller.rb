class UsersController < ApplicationController
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
        # @user = User.new(user_params)
        @user = User.create(user_params)
        @products = Product.all
        # if @user.save
        if @user.valid?
            redirect_to products_path
        else
            # flash[:errors] = @user.errors.full_messages
            render :new
        end
    end
    # def destroy
    #     # authorize! :destroy, @user, :message => 'Not authorized as an administrator.'
    #     user = User.find(params[:id])
    #     unless user == current_user
    #       user.destroy
    #       redirect_to new_user_path, :notice => "User deleted."
    #     else
    #       redirect_to new_user_path, :notice => "Can't delete yourself."
    #     end
      
    # end
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
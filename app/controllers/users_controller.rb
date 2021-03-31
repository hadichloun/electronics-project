# class UsersController < ApplicationController
#     before_action :current_user, only: [:show]
#     before_action :not_logged_in, only: [:show] 
#     def index
#         @user = User.all
#     end
#     def new
#         @user = User.new
#     end
#     def create 
#         # byebug
#         # create an instance of user
#         @user = User.new(user_params)
#         @products = Product.all 
#             # check if valid
#         if @user.valid? 
#             # if true
#             # create session
#             @user.save
#             session[:id] = @user.id
#             redirect_to products_path
#             # if false
#         else
#             # show errors
#             flash[:errors] = @user.errors.full_messages
#             # come back to form
#             redirect_to new_user_path
#         end
#     end
#     def show
#         # byebug
#         # @username = session[:username]
#         # @password = session[:password]
#         @user = User.find(params[:id])
#     end
#     def update
#         @user = User.find(params[:id])
#         @user.update(user_params)
#         @user.save
#         redirect_to user_path(@user)
#     end
#     private
#     def user_params
#         params.require(:user).permit(:name, :password)
#     end
# end

  
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

    private 

    def user_params
        params.require(:user).permit(:name, :email, :password )
    end
end
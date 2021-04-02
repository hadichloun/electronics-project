class UserProductsController < ApplicationController
    def new
        @user_product = UserProduct.new
    end

    def index
        @user_products = UserProduct.all
    end

    def show
        @user_product =UserProduct.find(params[:id])
        @product = Product.find(params[:id])
    end

    def create
        # byebug
        @user_product = UserProduct.create({
            user_id: params[:user_product][:user_id],
            product_id: params[:user_product][:product_id]
        })
        redirect_to products_path, notice: "Thank you for your purchase!"
    end

    def edit
        @user_product = UserProduct.find(params[:id])
    end

    def update
        @user_product = UserProduct.udpate({
            user_id: params[:user_product][:user_id],
            product_id: params[:user_product][:product_id]
        })
        redirect_to User_path(@user_product)
    end
end
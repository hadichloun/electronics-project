class ProductsController < ApplicationController
    def index
        @products = Product.all
    end
    
    def show
        # byebug
        @product = Product.find(params[:id])
    end
end

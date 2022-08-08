class ProductController < ApplicationController



    def show
        @product = Product.find(params[:id])

        render :show
    end
end
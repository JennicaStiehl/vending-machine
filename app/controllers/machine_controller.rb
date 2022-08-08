class MachineController < ApplicationController

    def index
        @products = Product.all
    end

    def dispense
        product = Product.find(params[:product][:code])
        if !product.nil?
            redirect_to product_path("#{product.id}")
        else flash[:errors] = "Please enter a code that corresponds to one of the listed products."
        end
    end
end
class ProductsController < ApplicationController


    def index
        products = Product.all
        render json: products
    end

    def show
      product = Product.find(params[:id])
      render json: product
    end

    def create
        product = Product.create(product_params)
        if product.valid?
          render json: product
        else
          render json: {message: product.errors.full_messages[0]}, status: :not_acceptable
        end 
    end

    private

    def product_params
        params.require(:product).permit( :name, :price)
    end
end

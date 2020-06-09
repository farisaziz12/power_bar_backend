class OrdersController < ApplicationController

    def create
        order = Order.new(order_params)
        user = User.find_by(email: params[user_email])
        order.user_id = user.id
        if order.valid?
          order.save
          render json: order
        else
          render json: {message: order.errors.full_messages[0]}, status: :not_acceptable
        end 
    end

    def show
      order = Order.find(params[:id])
      render json: order
    end


    private

    def order_params
        params.require(:order).permit( :paid, :completed)
    end
end

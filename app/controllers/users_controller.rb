class UsersController < ApplicationController

    def get_user
        email = params[:email]
        user = User.find_by(email: email)
        render json: user
    end

    def user_orders
        orders = Order.find_by(user_id: params[:id])
        render json: orders
    end


    def create
        user = User.create(user_params)
        if user.valid?
          render json: user
        else
          render json: {message: user.errors.full_messages[0]}, status: :not_acceptable
        end 
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end


    private

    def user_params
        params.require(:user).permit( :admin, :email, :first_name, :last_name, :balance)
    end
end

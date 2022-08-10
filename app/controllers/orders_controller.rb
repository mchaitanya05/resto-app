class OrdersController < ApplicationController

    def index
    end

    def show
    end

    def create
        @order = Order.new(amount_cents: rand(1000..10000), payment_method: 'credit_card')
        @order.user_id = current_user.id
        if @order.save
          render json: { order: @order, payment: @order.payment }, status: :created
        else
          render json: @response.errors, status: :unprocessable_entity
        end
    end
end

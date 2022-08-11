class OrdersController < ApplicationController

    def index
    end

    def show
    end

    def create
        @order = Order.new(amount_cents: rand(1000..10000), payment_method: 'credit_card')
        @order.user_id = current_user.id
        @order.cart_id = session[:cart_id]
        OrderMailer.with(order: @order).order_create.deliver_now
        if @order.save
          redirect_to orders_index_url
          # render json: { order: @order, payment: @order.payment }, status: :created
        else
          render json: @response.errors, status: :unprocessable_entity
        end
    end
end

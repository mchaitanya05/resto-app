class OrderMailer < ApplicationMailer
    default from: 'muvvalac05@gmail.com'

    def order_create
        @order = params[:order]
        mail(to: 'muvvalachaitanya05@gmail.com', subject: 'Order Created Successfully!!')
    end
end

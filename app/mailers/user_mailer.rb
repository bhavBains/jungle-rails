class UserMailer < ApplicationMailer
    default from: 'no-reply@jungle.com'
    
     def welcome_email(order)
       @order = order
       @url  = 'http://example.com/login'
       mail(to: @order.email, subject: "Thanks for placing order, your order number is: " + @order.id)
     end
end

class OrderReceipt < ApplicationMailer
  default from: 'no-reply@jungle.com', return_path: 'system@jungle.com'

  def order_receipt_email(user, order)
    @user = user
    @order = order
    mail(to: user.email, subject: "Order Confirmation# #{ order.id }" )
  end
end

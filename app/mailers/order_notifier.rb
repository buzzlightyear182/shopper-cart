class OrderNotifier < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received order
    @order = order

    mail to: @order.email, subject: "Received Order #{@order.id} from Shopper store"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped order
    @order = order

    mail to: @order.email, subject: "Shipment for Order #{@order.id} from Shopper store"
  end
end

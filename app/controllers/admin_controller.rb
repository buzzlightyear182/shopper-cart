class AdminController < ApplicationController
  def index
    @total_orders = Order.all
  end
end

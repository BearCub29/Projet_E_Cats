class OrdersController < ApplicationController
  
  def index
    @orders = Order.where(cart_id: current_cart.id).where.not(stripetoken: "")
  end
  


  def shows 
  end


end

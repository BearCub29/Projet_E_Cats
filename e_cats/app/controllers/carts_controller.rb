class CartsController < ApplicationController
  before_action :authenticate_user!

  def show
    @total = 0
    @orders = Order.where(cart_id: current_cart.id)
  end

  def index
  end
  
  def create
    JoinItemCart.create(cart_id: params[:cart_id], item_id: params[:item_id], payed: false)
  end


  def new
  end

  def destroy
    JoinItemCart.where(cart_id: params[:cart_id], payed: false).destroy
  end


end




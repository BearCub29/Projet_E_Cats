class JoinItemCartsController < ApplicationController

  def destroy
    @join = JoinItemCart.find(params[:id])
    @join.destroy
  end
  
  def index
    @total = 0
    @cart = Cart.where(user_id: current_user.id)
    @joins = JoinItemCart.where(cart_id: @cart.ids)  
  end
  
  def create
    JoinItemCart.create(cart_id: params[:cart_id], item_id: params[:item_id])
  end

  def new
  end




end





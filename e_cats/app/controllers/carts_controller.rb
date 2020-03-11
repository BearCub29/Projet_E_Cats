class CartsController < ApplicationController
  before_action :authenticate_user!

  def show
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
    puts "new" * 100
  end

  def destroy
    puts "#" * 100
    JoinItemCart.find(cart_id: params[:cart_id])
    puts "#" * 100
  end


end




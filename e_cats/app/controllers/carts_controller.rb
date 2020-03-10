class CartsController < ApplicationController
#  before_action :authenticate_user!
  def show
  #  @cart = Cart.where(user_id: current_user.id)
  end

  def index
  end
  
  def create
    @cart = Cart.create(user_id: current_user.id)
    JoinItemCart.create(cart_id: @cart.id, item_id: params[:item_id])
  end


  def new
    puts "new" * 100
  end


end




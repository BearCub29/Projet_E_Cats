class ChargesController < ApplicationController
  def new
  end
  
  def create
    # Amount in cents
    @amount = 500
    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })

    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'usd',
    })

  Order.create(cart_id: current_cart.id, stripetoken: params[:stripeToken])
  JoinItemCart.where(cart_id: current_cart.id).update(payed: true)
  current_cart.update(id: current_cart.id)
  redirect_to root_path
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to '/'
    flash[:success]
  end
end

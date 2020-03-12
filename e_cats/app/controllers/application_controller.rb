class ApplicationController < ActionController::Base
  def current_cart
    Cart.find_by(user_id: current_user.id)
  end
end

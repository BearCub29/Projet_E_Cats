class JoinItemCartsController < ApplicationController

  def destroy
    @join = JoinItemCart.find(params[:id])
    @join.destroy
  end

end


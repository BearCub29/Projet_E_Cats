class Admin::DashboardController < ApplicationController
  def index
    @admin_items = Item.all
    
    @admin_users = User.all
  end
end

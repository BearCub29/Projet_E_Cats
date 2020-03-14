class ItemsController < ApplicationController
  def index
    @items = Item.all
    @parameter = params[:search]
    @results = Item.all.where("lower(title) LIKE :search", search: @parameter)

    puts "e" * 200
    puts params
    puts "e" * 200
  end

  def show
    @item = Item.find(params[:id])
  end


  def search
  
  end 

end

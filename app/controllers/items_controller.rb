class ItemsController < ApplicationController
  def new
    @item = Item.new
  end
    
  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to item_path(@item.id)
  end

  def show
    item = Item.find(params[:id])
    if item.weight == 25
     @result = 25 
    elsif item.weight == 50
     @result = 50
    elsif item.weight == 100
     @result = 100
    elsif item.weight == 150
     @result = 150
    elsif item.weight == 200
     @result = 200
    end
  end
  
  private
  def item_params
    params.require(:item).permit(:weight, :thickness, :size)
  end
end

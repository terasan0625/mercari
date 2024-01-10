class ItemsController < ApplicationController
  def new
    @item = Item.new
  end
    # @item = Item.new(item_params)

    # @item.save
    # redirect_to item_path(@item.id)
  

  def show
  end
  
  private
  def item_params
    params.require(:item).permit(:weight, :thickness, :size)
  end
end

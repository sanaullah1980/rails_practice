class ChoraItemsController < ApplicationController

  def index
    @items = ChoraItem.all
    render('chora_items/item_index')
  end

  def create
    @chora_item = ChoraItem.new()
  end

  def add
     @chora_item = ChoraItem.new(params.require(:chora_item).permit(:title, :city, :price))
    if @chora_item.save
      redirect_to(:action=> 'index')
    else
      render('create')
    end

  end

end

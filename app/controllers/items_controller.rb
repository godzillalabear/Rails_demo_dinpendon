class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to items_path, notice: 'Add your order!'
    else
      render :new
    end
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to items_path, notice: 'You have deleted the order.'
  end

  private
  def item_params
    params.require(:item).permit(:name, 
                                 :description, 
                                 :price, 
                                 :spec)
  end
end

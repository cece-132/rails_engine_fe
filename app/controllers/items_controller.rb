class ItemsController < ApplicationController

  def index
    @items = RailsEngineFacade.all_items
  end

  def show
    @item = RailsEngineFacade.one_item(params[:id])
  end

end
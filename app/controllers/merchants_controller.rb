class MerchantsController < ApplicationController

  def index
    @merchants = RailsEngineFacade.all_merchants
  end

  def show
    @merchant = RailsEngineFacade.one_merchant(params[:id])
    @items = RailsEngineFacade.merchant_items(params[:id])
  end

end
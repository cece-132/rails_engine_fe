class RailsEngineFacade

  def self.all_merchants
    json = RailsEngineService.all_merchants

    json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.one_merchant(id)
    json = RailsEngineService.one_merchant(id)
    merchant_data = json[:data]
    Merchant.new(merchant_data)
  end

  def self.merchant_items(id)
    json = RailsEngineService.merchant_items(id)
    
    json[:data].map do |item_data|
      Item.new(item_data)
    end
  end

  def self.all_items
    json = RailsEngineService.all_items

    json[:data].map do |item_data|
      Item.new(item_data)
    end
  end

  def self.one_item(id)
    json = RailsEngineService.one_item(id)
    item_data = json[:data]
    Item.new(item_data)
  end

end
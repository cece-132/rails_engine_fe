require 'faraday'
require 'json'

class RailsEngineService
  
  def self.parse(response)
    JSON.parse(response, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: 'http://localhost:3000')
  end

  def self.all_merchants
    response = conn.get('/api/v1/merchants')
    parse(response.body)
  end

  def self.one_merchant(id)
    response = conn.get("/api/v1/merchants/#{id}")
    parse(response.body)
  end

  def self.merchant_items(id)
    response = conn.get("/api/v1/merchants/#{id}/items")
    parse(response.body)
  end
  
  def self.all_items
    response = conn.get('/api/v1/items')
    parse(response.body)
  end

  def self.one_item(id)
    response = conn.get("/api/v1/items/#{id}")
    parse(response.body)
  end

end
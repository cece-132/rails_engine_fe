require 'rails_helper'

RSpec.describe "Items" do
  describe "show" do
    it 'should show the items information' do
      visit '/items/4'

      expect(page).to have_content("Item Nemo Facere")

      #expect page to have merchant items
    end

    it 'should show the merchant information' do
      
    end
  end
end
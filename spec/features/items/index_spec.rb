require 'rails_helper'

RSpec.describe "Items" do
  describe 'Index' do
    it 'returns all the items' do
      visit items_path

      expect(page).to have_content("Items")

      within '.items' do
        expect(page).to have_link("Item Nemo Facere")
      end
    end
  end
end
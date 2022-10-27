require 'rails_helper'

RSpec.describe "Merchants Show Page" do
  describe 'Merchants Items' do
    it 'can list the merchant and its items' do
      visit '/merchants/1'

      expect(page).to have_content("Schroeder-Jerde")

      #expect page to have merchant items
    end
  end
end
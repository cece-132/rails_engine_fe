require 'rails_helper'

RSpec.describe "Merchants" do
  describe 'Index' do
    it 'returns all the merchants' do
      visit '/merchants'

      within '.merchants' do
        expect(page).to all(be_a Merchant)
      end
    end
  end
end
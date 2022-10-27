require 'rails_helper'

RSpec.describe "Merchants" do
  describe 'Index' do
    it 'returns all the merchants' do
      visit merchants_path

      expect(page).to have_content("Merchants")

      within '.merchants' do
        expect(page).to have_link("Schroeder-Jerde")
      end
    end
  end
end
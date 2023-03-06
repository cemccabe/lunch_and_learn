require 'rails_helper'

RSpec.describe CountryService do
  describe '#random_country' do
    it 'returns a random country' do
      response = CountryService.random_country
      
      expect(response).to be_a(Hash)

      expect(response).to have_key(:name)
      expect(response[:name]).to have_key(:common)
      expect(response[:name][:common]).to be_a(String)
    end
  end

  describe '#lat_long' do
    it 'returns the latitude and longitude of the capital city of the country provided' do
      search_term = 'France'
      response = CountryService.lat_long(search_term)

      expect(response).to be_a(Hash)

      expect(response).to have_key(:name)
      expect(response[:name]).to have_key(:common)
      expect(response[:name][:common]).to eq('France')

      expect(response).to have_key(:capitalInfo)
      expect(response[:capitalInfo]).to have_key(:latlng)
      expect(response[:capitalInfo][:latlng]).to eq([48.87, 2.33])
    end
  end
end
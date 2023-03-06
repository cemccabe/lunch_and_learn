require 'rails_helper'

RSpec.describe CountryService do
  describe '#random_country' do
    it 'returns a random country' do
      response = CountryService.random_country

      expect(response).to be_a(Hash)
      
      expect(response).to have_key(:name)
      expect(response[:name]).to have_key[:common]
      expect(response[:name][:common]).to be_a(String)
    end
  end
end
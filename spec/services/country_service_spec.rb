require 'rails_helper'

RSpec.describe CountryService do
  before(:each) do
    stub_request(:get, "https://restcountries.com/v3.1/all?fields=name").
      to_return(status: 200, body: File.read('./spec/fixtures/countries_response.json'), headers: {})
  end

  describe '#random_country' do
    it 'returns a random country' do
      response = CountryService.random_country
      
      expect(response).to be_a(Hash)

      expect(response).to have_key(:name)
      expect(response[:name]).to have_key(:common)
      expect(response[:name][:common]).to be_a(String)
    end
  end
end
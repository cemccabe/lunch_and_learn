require 'rails_helper'

RSpec.describe PlacesService do
  describe '#tourism_sights' do
    it 'returns all tourist sights' do
      response = PlacesService.tourism_sights('France')
      
      expect(response).to be_a(Hash)

      expect(response).to have_key(:type)
      expect(response[:type]).to be_a(String)

      expect(response).to have_key(:features)
      expect(response[:features]).to be_an(Array)

      feature = response[:features].first

      expect(feature).to have_key(:properties)
      expect(feature[:properties]).to be_a(Hash)

      expect(feature[:properties]).to have_key(:name)
      expect(feature[:properties][:name]).to be_a(String)

      expect(feature[:properties]).to have_key(:address_line1)
      expect(feature[:properties][:address_line1]).to be_a(String)

      expect(feature[:properties]).to have_key(:address_line2)
      expect(feature[:properties][:address_line2]).to be_a(String)

      expect(feature[:properties]).to have_key(:place_id)
      expect(feature[:properties][:place_id]).to be_a(String)
    end
  end
end
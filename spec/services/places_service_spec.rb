require 'rails_helper'

RSpec.describe PlacesService do
  describe '#tourism_sights' do
    it 'returns all tourist sights' do
      response = PlacesService.tourism_sights('France')
      
      expect(response).to be_a(Hash)

      expect(response).to have_key(:type)
      expect(response[:type]).to be_a(String)
    end
  end
end
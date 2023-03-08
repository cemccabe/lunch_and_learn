require 'rails_helper'

RSpec.describe RecipesService do
  describe '#recipes' do
    it 'returns a hash of recipes' do
      response = RecipesService.recipes('Thailand')

      expect(response).to be_a(Hash)

      expect(response).to have_key(:hits)
      expect(response[:hits]).to be_an(Array)

      expect(response[:hits][0]).to have_key(:recipe)

      expect(response[:hits][0][:recipe]).to have_key(:label)
      expect(response[:hits][0][:recipe][:label]).to be_a(String)

      expect(response[:hits][0][:recipe]).to have_key(:image)
      expect(response[:hits][0][:recipe][:image]).to be_a(String)

      expect(response[:hits][0][:recipe]).to have_key(:url)
      expect(response[:hits][0][:recipe][:url]).to be_a(String)
    end
  end
end
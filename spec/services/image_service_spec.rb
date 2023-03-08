require 'rails_helper'

RSpec.describe ImageService do
  describe '#search_images' do
    it 'returns image data' do
      response = ImageService.search_images('Laos')

      expect(response).to be_a(Hash)

      expect(response).to have_key(:total)
      expect(response).to have_key(:results)
      expect(response[:results]).to be_an(Array)
      
      expect(response[:results].count).to eq(10)

      expect(response[:results][0]).to have_key(:id)
      expect(response[:results][0][:id]).to be_a(String)

      expect(response[:results][0]).to have_key(:alt_description)
      expect(response[:results][0][:alt_description]).to be_a(String)

      expect(response[:results][0]).to have_key(:urls)
      expect(response[:results][0][:urls]).to be_a(Hash)

      expect(response[:results][0][:urls]).to have_key(:raw)
      expect(response[:results][0][:urls][:raw]).to be_a(String)
    end
  end
end
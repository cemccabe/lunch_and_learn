require 'rails_helper'

RSpec.describe ImageService do
  before(:each) do
    stub_request(:get, "https://api.unsplash.com/search/photos?client_id=#{ENV['client_id']}&query=Laos").
      to_return(status: 200, body: File.read('./spec/fixtures/laos_image_response.json'), headers: {})
  end

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
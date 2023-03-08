require 'rails_helper'

RSpec.describe VideoService do
  describe '#search_videos' do
    it 'returns video data' do
      response = VideoService.search_videos('Laos')

      expect(response).to be_a(Hash)

      expect(response).to have_key(:kind)
      expect(response).to have_key(:items)
      expect(response[:items]).to be_an(Array)
      
      expect(response[:items].count).to eq(1)

      expect(response[:items][0]).to have_key(:id)
      expect(response[:items][0][:id]).to be_a(Hash)

      expect(response[:items][0][:id]).to have_key(:videoId)
      expect(response[:items][0][:id][:videoId]).to be_a(String)

      expect(response[:items][0]).to have_key(:snippet)
      expect(response[:items][0][:snippet]).to be_a(Hash)

      expect(response[:items][0][:snippet]).to have_key(:title)
      expect(response[:items][0][:snippet][:title]).to be_a(String)
    end
  end
end
require 'rails_helper'

RSpec.describe LearningResourceFacade do
  before(:each) do
    stub_request(:get, "https://www.googleapis.com/youtube/v3/search?channelId=UCluQ5yInbeAkkeCndNnUhpw&key=#{ENV['key']}&maxResults=1&part=snippet&q=laos").
      to_return(status: 200, body: File.read('./spec/fixtures/youtube_response.json'), headers: {})
    
    stub_request(:get, "https://api.unsplash.com/search/photos?client_id=#{ENV['client_id']}&query=laos").
      to_return(status: 200, body: File.read('./spec/fixtures/laos_image_response.json'), headers: {})
  end

  describe '#resources' do
    it 'creates LearningResource objects' do
      learning_resource = LearningResourceFacade.resources('laos')

      expect(learning_resource).to be_a(LearningResource)
    end
  end
end
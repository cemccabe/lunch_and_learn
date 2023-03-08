require 'rails_helper'

RSpec.describe VideoFacade do
  before(:each) do
    stub_request(:get, "https://www.googleapis.com/youtube/v3/search?channelId=UCluQ5yInbeAkkeCndNnUhpw&key=#{ENV['key']}&maxResults=1&part=snippet&q=laos").
      to_return(status: 200, body: File.read('./spec/fixtures/youtube_response.json'), headers: {})
  end

  describe '#search_videos' do
    it 'creates Video object' do
      video = VideoFacade.search_videos('laos')

      expect(video).to be_a(Video)
    end
  end
end
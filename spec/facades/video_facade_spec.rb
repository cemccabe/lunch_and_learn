require 'rails_helper'

RSpec.describe VideoFacade do
  describe '#search_videos' do
    it 'creates Video object' do
      video = VideoFacade.search_videos('laos')

      expect(video).to be_a(Video)
    end
  end
end
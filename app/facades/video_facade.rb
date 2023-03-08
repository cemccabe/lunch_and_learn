class VideoFacade
  def self.search_videos(country)
    response = VideoService.search_videos(country)
    Video.new(response[:items][0])
  end
end
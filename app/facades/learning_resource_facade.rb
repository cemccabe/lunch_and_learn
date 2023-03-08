class LearningResourceFacade
  def self.resources(country)
    video_data = VideoFacade.search_videos(country)
    image_data = ImageFacade.search_images(country)

    LearningResource.new(country, video_data, image_data)
  end
end
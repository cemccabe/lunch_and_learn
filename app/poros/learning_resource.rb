class LearningResource
  attr_reader :id, :country, :video, :images

  def initialize(country, video_data, image_data)
    @id = nil
    @country = country
    @video = video_parse(video_data)
    @images = images_parse(image_data)
  end

  def video_parse(video_data)
    if video_data
    video = Video.new(video_data)
      {
        title: video.title,
        youtube_video_id: video.youtube_video_id
      }
    else
      {}
    end
  end

  def images_parse(image_data)
    if image_data
      image_data.map do |image|
        {
          alt_tag: image.alt_tag,
          url: image.url
        }
      end
    else
      []
    end
  end
end
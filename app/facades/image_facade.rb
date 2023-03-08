class ImageFacade
  def self.search_images(country)
    response = ImageService.search_images(country)[:results]
    response.map do |attr|
      Image.new(attr)
    end
  end
end
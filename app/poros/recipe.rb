class Recipe
  attr_reader :id, :title, :url, :image, :country
  
  def initialize(data, country)
    @id = nil
    @title = data[:label]
    @url = data[:url]
    @image = data[:image]
    @country = country
  end
end
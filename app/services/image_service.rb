class ImageService
  def self.search_images(query)
    conn = Faraday.new(url: 'https://api.unsplash.com')

    response = conn.get('/search/photos') do |req|
      req.params[:query] = "#{query}"
      req.params[:client_id] = ENV['client_id']
    end

    JSON.parse(response.body, symbolize_names: true)
  end
end
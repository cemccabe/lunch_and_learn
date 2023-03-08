class VideoService
  def self.search_videos(query)
    conn = Faraday.new(url: 'https://www.googleapis.com')

    response = conn.get('/youtube/v3/search') do |req|
      req.params[:part] = 'snippet'
      req.params[:channelId] = 'UCluQ5yInbeAkkeCndNnUhpw'
      req.params[:key] = ENV['key']
      req.params[:q] = "#{query}"
      req.params[:maxResults] = 1
    end
    
    JSON.parse(response.body, symbolize_names: true)
  end
end
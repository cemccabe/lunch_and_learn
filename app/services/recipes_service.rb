class RecipesService
  def self.recipes(country)
    conn = Faraday.new(url: 'https://api.edamam.com')
    
    response = conn.get('/api/recipes/v2') do |req|
      req.params[:type] = 'public'
      req.params[:q] = "#{country}"
      req.params[:app_id] = ENV['app_id']
      req.params[:app_key] = ENV['app_key']
    end

    JSON.parse(response.body, symbolize_names: true)
  end
end
class PlacesService
  def self.tourism_sights(country)
    country_data = Country.new(CountryService.lat_long(country))

    conn = Faraday.new(url: 'https://api.geoapify.com')
    response = conn.get('/v2/places') do |req|
      req.params[:categories] = 'tourism.sights'
      req.params[:filter] = "circle:#{country_data.longitude},#{country_data.latitude},1000"
      req.params[:apiKey] = ENV['apiKey']
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
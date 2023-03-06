class CountryService
  def self.random_country
    conn = Faraday.new(url: 'https://restcountries.com')
    response = conn.get('/v3.1/all?fields=name')
    JSON.parse(response.body, symbolize_names: true).sample
  end

  def self.lat_long(country)
    conn = Faraday.new(url: 'https://restcountries.com')
    response = conn.get("/v3.1/name/#{country}")
    JSON.parse(response.body, symbolize_names: true).first
  end
end
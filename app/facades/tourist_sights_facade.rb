class TouristSightsFacade
  def self.sights(country)
    response = PlacesService.tourist_sights(country)[:features]
    response.map do |attr|
      TouristSight.new(attr)
    end
  end
end
class TouristSightsFacade
  def self.sights(country)
    response = PlacesService.tourism_sights
    response.map do |attr|
      TouristSight.new(attr)
    end
  end
end
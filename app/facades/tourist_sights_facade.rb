class TouristSightsFacade
  def self.sights(country)
    response = PlacesService.tourism_sights(country)[:features]
    binding.pry
    response[:properties].map do |attr|
      TouristSight.new(attr)
    end
  end
end
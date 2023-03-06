class TouristSight
  attr_reader :id, :type, :name, :address, :place_id

  def initialize(data)
    @id = nil
    @type = 'tourist_sight'
    @name = [data][:features].first[:properties][:name]
    @address = "#{[data][:features].first[:properties][:address_line1]}, #{[data][:features].first[:properties][:address_line2]}"
    @place_id = [data][:features].first[:properties][:place_id]
  end
end
class TouristSight
  attr_reader :id, :type, :name, :address, :place_id

  def initialize(data)
    @id = nil
    @type = 'tourist_sight'
    binding.pry
    @name = [data][:name]
    @address = "#{[data][:properties][:address_line1]}, #{[data][:properties][:address_line2]}"
    @place_id = [data][:properties][:place_id]
  end
end
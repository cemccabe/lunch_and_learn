class Country
  attr_reader :name, :latitude, :longitude

  def initialize(data)
    @name = data[:name][:common]
    @latitude = data[:capitalInfo][:latlng].first.to_s
    @longitude = data[:capitalInfo][:latlng].last.to_s
  end
end
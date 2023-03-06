class TouristSightSerializer
  include JSONAPI::Serializer
  attributes :id, :type, :name, :address, :place_id
end
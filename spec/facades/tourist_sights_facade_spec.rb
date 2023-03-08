require 'rails_helper'

RSpec.describe TouristSightsFacade do
  describe '#sights' do
    it 'returns a list of tourist sights in a given country\'s capital' do
      search_term = 'France'

      sights = TouristSightsFacade.sights(search_term)

      expect(sights).to be_an(Array)

      sight = sights.first

      expect(sight).to be_a(TouristSight)
      expect(sight.id).to eq(nil)
      expect(sight.name).to eq("Palais du Louvre")
      expect(sight.address).to eq("Louvre Palace, Avenue du Général Lemonnier, 75001 Paris, France")
      expect(sight.place_id).to eq("518d1bce0ed2af02405927f526f2356e4840f00101f90159c731000000000092031050616c616973206475204c6f75767265")
    end
  end
end
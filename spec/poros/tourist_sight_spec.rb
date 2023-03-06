require 'rails_helper'

RSpec.describe TouristSight do
  it 'exists' do
    data = {:type=>"Feature",
      :properties=>
       {:name=>"Hôtel de la Marine",
        :country=>"France",
        :country_code=>"fr",
        :region=>"Metropolitan France",
        :state=>"Ile-de-France",
        :city=>"Paris",
        :postcode=>"75008",
        :district=>"Paris",
        :suburb=>"8th Arrondissement of Paris",
        :city_block=>"Quartier de la Madeleine",
        :street=>"Place de la Concorde",
        :lon=>2.3235045127976046,
        :lat=>48.8669402,
        :formatted=>"Hôtel de la Marine, Place de la Concorde, 75008 Paris, France",
        :address_line1=>"Hôtel de la Marine",
        :address_line2=>"Place de la Concorde, 75008 Paris, France",
        :categories=>["building", "building.historic", "building.tourism", "heritage", "tourism", "tourism.attraction", "tourism.sights"],
        :details=>["details", "details.heritage", "details.wiki_and_media"],
        :datasource=>
         {:sourcename=>"openstreetmap",
          :attribution=>"© OpenStreetMap contributors",
          :license=>"Open Database Licence",
          :url=>"https://www.openstreetmap.org/copyright",
          :raw=>
           {:name=>"Hôtel de la Marine",
            :osm_id=>-1060822,
            :"ref:mhs"=>"PA00088817",
            :tourism=>"attraction",
            :website=>"http://www.hotel-de-la-marine.paris/",
            :alt_name=>"Hôtel du Garde-Meuble;Garde-Meuble de la Reine",
            :building=>"government",
            :heritage=>2,
            :historic=>"manor",
            :osm_type=>"r",
            :wikidata=>"Q2059518",
            :"addr:city"=>"Paris",
            :architect=>"Ange-Jacques Gabriel;Jacques-Germain Soufflot",
            :wikipedia=>"fr:Hôtel de la Marine",
            :"addr:street"=>"Place de la Concorde",
            :old_landuse=>"military",
            :"addr:postcode"=>75008,
            :"heritage:operator"=>"mhs",
            :wikimedia_commons=>"Category:Hôtel de la Marine (Paris)"}},
        :place_id=>"51388772e2a895024059b124d037f76e4840f00101f901d62f10000000000092031348c3b474656c206465206c61204d6172696e65"},
      :geometry=>{:type=>"Point", :coordinates=>[2.3230760279847367, 48.86691949523209]}}

    sight = TouristSight.new(data)

    expect(sight).to be_a(TouristSight)
    expect(sight.id).to eq(nil)
    expect(sight.name).to eq("Hôtel de la Marine")
    expect(sight.address).to eq("Hôtel de la Marine, Place de la Concorde, 75008 Paris, France")
    expect(sight.place_id).to eq("51388772e2a895024059b124d037f76e4840f00101f901d62f10000000000092031348c3b474656c206465206c61204d6172696e65")
  end
end
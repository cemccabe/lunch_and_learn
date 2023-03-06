require 'rails_helper'

describe 'Tourist sights request', type: :request do
  it 'returns tourist sights of the capital city given a country' do
    get '/api/v1/tourist_sights?country=France'
    expect(response).to be_successful
    
    tourist_sights = JSON.parse(response.body, symbolize_names: true)[:data]

    expect(tourist_sights).to be_an(Array)
    
    tourist_sights.each do |sight|
      expect(sight[:id]).to eq(nil)
      expect(sight[:type]).to eq('tourist_sight')
      expect(sight[:attributes]).to be_a(Hash)
      expect(sight[:attributes][:name]).to be_a(String)
      expect(sight[:attributes][:address]).to be_a(String)
      expect(sight[:attributes][:place_id]).to be_a(String)
    end
  end
end
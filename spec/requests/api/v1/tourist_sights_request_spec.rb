require 'rails_helper'

describe 'Tourist sights request', type: :request do
  it 'returns tourist sights of the capital city given a country' do
    get '/api/v1/tourist_sights?country=France'
    expect(response).to be_successful
  end
end
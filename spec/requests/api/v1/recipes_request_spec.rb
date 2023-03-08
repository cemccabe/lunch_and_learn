require 'rails_helper'

RSpec.describe 'Recipe requests' do
  before(:each) do
    stub_request(:get, "https://api.edamam.com/api/recipes/v2?app_id=#{ENV['app_id']}&app_key=#{ENV['app_key']}&q=Djibouti&type=public").
      to_return(status: 200, body: File.read('./spec/fixtures/djibouti_response.json'), headers: {})

    stub_request(:get, "https://api.edamam.com/api/recipes/v2?app_id=#{ENV['app_id']}&app_key=#{ENV['app_key']}&q=&type=public").
      to_return(status: 200, body: File.read('./spec/fixtures/empty_query_response.json'), headers: {})

    stub_request(:get, "https://restcountries.com/v3.1/all?fields=name").
      to_return(status: 200, body: File.read('./spec/fixtures/countries_response.json'), headers: {})

    stub_request(:get, "https://api.edamam.com/api/recipes/v2?app_id=#{ENV['app_id']}&app_key=#{ENV['app_key']}&q=Thailand&type=public").
      to_return(status: 200, body: File.read('./spec/fixtures/thailand_recipe_response.json'), headers: {})
  end

  it 'returns recipe with country query entered' do
    get '/api/v1/recipes?country=Thailand'
    expect(response).to be_successful

    recipes = JSON.parse(response.body, symbolize_names: true)
    
    expect(recipes).to be_a(Hash)

    recipes[:data].each do |recipe|
      expect(recipe[:id]).to eq(nil)
      expect(recipe[:type]).to eq('recipe')
      expect(recipe[:attributes]).to be_a(Hash)
      expect(recipe[:attributes][:title]).to be_a(String)
      expect(recipe[:attributes][:url]).to be_a(String)
      expect(recipe[:attributes][:image]).to be_a(String)
      expect(recipe[:attributes][:country]).to be_a(String)

      expect(recipe[:attributes]).to_not have_key(:uri)
      expect(recipe[:attributes]).to_not have_key(:source)
      expect(recipe[:attributes]).to_not have_key(:ingredients)
    end
  end

  it 'returns recipes of a random country if no country query entered' do
    WebMock.allow_net_connect!
    
    get '/api/v1/recipes'
    expect(response).to be_successful

    recipes = JSON.parse(response.body, symbolize_names: true)

    expect(recipes).to be_a(Hash)

    recipes[:data].each do |recipe|
      expect(recipe[:id]).to eq(nil)
      expect(recipe[:type]).to eq('recipe')
      expect(recipe[:attributes]).to be_a(Hash)
      expect(recipe[:attributes][:title]).to be_a(String)
      expect(recipe[:attributes][:url]).to be_a(String)
      expect(recipe[:attributes][:image]).to be_a(String)
      expect(recipe[:attributes][:country]).to be_a(String)

      expect(recipe[:attributes]).to_not have_key(:uri)
      expect(recipe[:attributes]).to_not have_key(:source)
      expect(recipe[:attributes]).to_not have_key(:ingredients)
    end
  end

  it 'returns empty array if country param is an empty string' do
    get '/api/v1/recipes?country='
    expect(response).to be_successful

    recipes = JSON.parse(response.body, symbolize_names: true)

    expect(recipes).to be_a(Hash)
    
    expect(recipes).to have_key(:data)
    expect(recipes[:data]).to be_an(Array)
    expect(recipes[:data].count).to eq(0)
  end

  it 'returns empty array if country param is a value that does not return recipes' do
    get '/api/v1/recipes?country=Djibouti'
    expect(response).to be_successful

    recipes = JSON.parse(response.body, symbolize_names: true)

    expect(recipes).to be_a(Hash)
    
    expect(recipes).to have_key(:data)
    expect(recipes[:data]).to be_an(Array)
    expect(recipes[:data].count).to eq(0)
  end
end

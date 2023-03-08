require 'rails_helper'

RSpec.describe 'Recipe requests' do
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

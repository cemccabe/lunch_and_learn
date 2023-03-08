require 'rails_helper'

RSpec.describe 'Favorites requests' do
  it 'adds favorite recipes to user' do
    user = User.create!(name: 'Test Name', email: 'test@gmail.com', api_key: '1j1j1j1j1j1j1j1j')
    expect(user.favorites).to eq([])

    post '/api/v1/favorites', params: {
      "api_key": "#{user.api_key}",
      "country": "thailand",
      "recipe_link": "https://www.tastingtable.com",
      "recipe_title": "Crab Fried Rice (Khaao Pad Bpu)"
    }

    expect(response).to be_successful
    expect(response.status).to eq(201)
    
    expect(user.favorites.count).to eq(1)

    message = JSON.parse(response.body, symbolize_names: true)
    expect(message[:success]).to eq('Favorite added successfully')

    favorite = Favorite.last
    expect(favorite.api_key).to eq(user.api_key)
    expect(favorite.country).to eq('thailand')
    expect(favorite.recipe_link).to eq('https://www.tastingtable.com')
    expect(favorite.recipe_title).to eq('Crab Fried Rice (Khaao Pad Bpu)')
  end
end
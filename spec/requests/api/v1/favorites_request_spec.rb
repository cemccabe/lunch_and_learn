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
    expect(favorite.country).to eq('thailand')
    expect(favorite.recipe_link).to eq('https://www.tastingtable.com')
    expect(favorite.recipe_title).to eq('Crab Fried Rice (Khaao Pad Bpu)')
  end

  it 'displays an error if api_key is invalid' do
    user = User.create!(name: 'Test Name', email: 'test@gmail.com', api_key: '1j1j1j1j1j1j1j1j')

    post '/api/v1/favorites', params: {
      "api_key": "9999999999999999",
      "country": "thailand",
      "recipe_link": "https://www.tastingtable.com",
      "recipe_title": "Crab Fried Rice (Khaao Pad Bpu)"
    }

    expect(response).to_not be_successful
    expect(response.status).to eq(404)

    message = JSON.parse(response.body, symbolize_names: true)
    expect(message[:errors]).to eq('Not a valid API key - no matching user')
  end

  it 'returns a list of a users favorites' do
    user = User.create!(name: 'Test Name', email: 'test@gmail.com', api_key: 'jgn983hy48thw9begh98h4539h4')

    Favorite.create!(country: 'Laos', recipe_title: 'Chicken', recipe_link: 'chicken.com', user: user)
    Favorite.create!(country: 'Thailand', recipe_title: 'Beef', recipe_link: 'beef.com', user: user)
    Favorite.create!(country: 'France', recipe_title: 'Pork', recipe_link: 'pork.com', user: user)

    expect(user.favorites.count).to eq(3)

    get "/api/v1/favorites?api_key=#{user.api_key}"

    expect(response).to be_successful
  end
end
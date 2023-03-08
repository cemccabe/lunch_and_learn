require 'rails_helper'

RSpec.describe 'Favorites requests' do
  it 'adds favorite recipes to user' do
    post '/api/v1/favorites', params: {
      "api_key": "jgn983hy48thw9begh98h4539h4",
      "country": "thailand",
      "recipe_link": "https://www.tastingtable.com",
      "recipe_title": "Crab Fried Rice (Khaao Pad Bpu)"
    }

    expect(response).to be_successful
    expect(response.status).to eq(201)
    
  end
end
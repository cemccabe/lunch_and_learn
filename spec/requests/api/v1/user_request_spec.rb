require 'rails_helper'

RSpec.describe 'User requests' do
  it 'creates a new user' do
    post '/api/v1/users', params: {user: {name: 'Test Name', email: 'test@gmail.com'}}
    expect(response).to be_successful
    expect(response.status).to eq(201)

    user = User.last
    expect(user.name).to eq('Test Name')
    expect(user.email).to eq('test@gmail.com')
    expect(user.api_key).to be_a(String)
    expect(user.api_key.chars.count).to eq(32)
  end
end
require 'rails_helper'

RSpec.describe 'User requests' do
  it 'creates a new user' do
    post '/api/v1/users', params: {user: {name: 'Test Name', email: 'test@gmail.com'}}
    expect(response).to be_successful
    expect(response.status).to eq(201)
  end
end
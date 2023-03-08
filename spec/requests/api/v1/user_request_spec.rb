require 'rails_helper'

RSpec.describe 'User requests' do
  it 'creates a new user' do
    post '/api/v1/users', params: {user: {name: 'Test Name', email: 'test@gmail.com'}}
    expect(response).to be_successful
    expect(response.status).to eq(201)

    user_response = JSON.parse(response.body, symbolize_names: true)

    expect(user_response).to be_a(Hash)

    expect(user_response).to have_key(:data)
    expect(user_response[:data]).to be_a(Hash)

    expect(user_response[:data]).to have_key(:id)
    expect(user_response[:data][:id]).to be_a(String)

    expect(user_response[:data]).to have_key(:type)
    expect(user_response[:data][:type]).to eq('user')

    expect(user_response[:data]).to have_key(:attributes)
    expect(user_response[:data][:attributes]).to be_a(Hash)

    expect(user_response[:data][:attributes]).to have_key(:name)
    expect(user_response[:data][:attributes][:name]).to be_a(String)

    expect(user_response[:data][:attributes]).to have_key(:email)
    expect(user_response[:data][:attributes][:email]).to be_a(String)

    expect(user_response[:data][:attributes]).to have_key(:api_key)
    expect(user_response[:data][:attributes][:api_key]).to be_a(String)


    user = User.last

    expect(user.name).to eq(user_response[:data][:attributes][:name])
    expect(user.email).to eq(user_response[:data][:attributes][:email])
    expect(user.api_key).to eq(user_response[:data][:attributes][:api_key])
  end

  it 'returns an error message if an email address is not unique' do
    post '/api/v1/users', params: {user: {name: 'test1', email: 'test@gmail.com'}}
    post '/api/v1/users', params: {user: {name: 'test2', email: 'test@gmail.com'}}

    expect(response).to_not be_successful
    expect(response.status).to eq(400)
    expect(response.body).to include('Email has already been taken')
  end
end
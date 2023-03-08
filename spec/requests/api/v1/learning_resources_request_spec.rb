require 'rails_helper'

RSpec.describe 'Learning resources requests' do
  it 'returns learning resources for given country' do
    get '/api/v1/learning_resources?country=laos'
    expect(response).to be_successful
  end
end
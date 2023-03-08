require 'rails_helper'

RSpec.describe 'Recipe requests' do
  it 'returns recipe with country query entered' do
    get '/api/v1/recipes?country=thailand'
    expect(response).to be_successful
  end
end

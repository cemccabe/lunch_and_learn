require 'rails_helper'

RSpec.describe 'Learning resources requests' do
  before(:each) do
    stub_request(:get, "https://www.googleapis.com/youtube/v3/search?channelId=UCluQ5yInbeAkkeCndNnUhpw&key=#{ENV['key']}&maxResults=1&part=snippet&q=laos").
      to_return(status: 200, body: File.read('./spec/fixtures/youtube_response.json'), headers: {})

    stub_request(:get, "https://api.unsplash.com/search/photos?client_id=#{ENV['client_id']}&query=laos").
      to_return(status: 200, body: File.read('./spec/fixtures/laos_image_response.json'), headers: {})
  end

  it 'returns learning resources for given country' do
    get '/api/v1/learning_resources?country=laos'
    expect(response).to be_successful

    learning_resources = JSON.parse(response.body, symbolize_names: true)

    expect(learning_resources).to be_a(Hash)

    expect(learning_resources).to have_key(:data)
    expect(learning_resources[:data]).to be_a(Hash)

    expect(learning_resources[:data]).to have_key(:id)
    expect(learning_resources[:data][:id]).to eq(nil)

    expect(learning_resources[:data]).to have_key(:type)
    expect(learning_resources[:data][:type]).to eq('learning_resource')

    expect(learning_resources[:data]).to have_key(:attributes)
    expect(learning_resources[:data][:attributes]).to be_a(Hash)

    expect(learning_resources[:data][:attributes]).to have_key(:country)
    expect(learning_resources[:data][:attributes][:country]).to eq('laos')

    expect(learning_resources[:data][:attributes]).to have_key(:video)
    expect(learning_resources[:data][:attributes][:video]).to be_a(Hash)

    expect(learning_resources[:data][:attributes][:video]).to have_key(:title)
    expect(learning_resources[:data][:attributes][:video][:title]).to be_a(String)

    expect(learning_resources[:data][:attributes][:video]).to have_key(:youtube_video_id)
    expect(learning_resources[:data][:attributes][:video][:youtube_video_id]).to be_a(String)

    expect(learning_resources[:data][:attributes]).to have_key(:images)
    expect(learning_resources[:data][:attributes][:images]).to be_an(Array)

    learning_resources[:data][:attributes][:images].each do |image|
      expect(image).to have_key(:alt_tag)
      expect(image[:alt_tag]).to be_a(String)
      
      expect(image).to have_key(:url)
      expect(image[:url]).to be_a(String)
    end

    expect(learning_resources[:data][:attributes]).to_not have_key(:snippet)
    expect(learning_resources[:data][:attributes]).to_not have_key(:description)
    expect(learning_resources[:data][:attributes]).to_not have_key(:links)
  end
end
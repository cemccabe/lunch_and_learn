require 'rails_helper'

RSpec.describe ImageFacade do
  before(:each) do
    stub_request(:get, "https://api.unsplash.com/search/photos?client_id=#{ENV['client_id']}&query=laos").
      to_return(status: 200, body: File.read('./spec/fixtures/laos_image_response.json'), headers: {})
  end

  describe '#search_images' do
    it 'creates Image objects' do
      images = ImageFacade.search_images('laos')

      expect(images).to be_an(Array)
      images.each do |image|
        expect(image).to be_a(Image)
      end
    end
  end
end
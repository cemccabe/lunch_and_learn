require 'rails_helper'

RSpec.describe ImageFacade do
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
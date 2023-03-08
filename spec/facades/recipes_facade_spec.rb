require 'rails_helper'

RSpec.describe RecipesFacade do
  before(:each) do
    stub_request(:get, "https://api.edamam.com/api/recipes/v2?app_id=#{ENV['app_id']}&app_key=#{ENV['app_key']}&q=thailand&type=public").
      to_return(status: 200, body: File.read('./spec/fixtures/thailand_recipe_response.json'), headers: {})
  end
  
  describe '#recipes' do
    it 'creates Recipe objects' do
      recipes = RecipesFacade.recipes('thailand')

      expect(recipes).to be_an(Array)
      recipes.each do |recipe|
        expect(recipe).to be_a(Recipe)
      end
    end
  end
end
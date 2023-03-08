require 'rails_helper'

RSpec.describe RecipesFacade do
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
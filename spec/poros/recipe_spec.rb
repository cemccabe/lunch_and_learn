require 'rails_helper'

RSpec.describe Recipe do
  it 'exists with attributes' do
    data = File.read('spec/fixtures/recipe_data')
    
    recipe = Recipe.new(data, 'Thailand')

    expect(recipe).to be_a(Recipe)
    expect(recipe.id).to eq(nil)
    expect(recipe.title).to eq(data[:label])
    expect(recipe.url).to eq(data[:url])
    expect(recipe.country).to eq('Thailand')
  end
end
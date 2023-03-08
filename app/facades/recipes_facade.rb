class RecipesFacade
  def self.recipes(country)
    response = RecipesService.recipes(country)[:hits]
    response.map do |attr|
      Recipe.new(attr[:recipe], country)
    end
  end
end
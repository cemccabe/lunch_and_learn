module Api
  module V1
    class RecipesController < ApplicationController
      def index
        if params[:country]
          recipes = RecipesFacade.recipes(params[:country])
        else
          random_country = Country.new(CountryService.random_country)
          recipes = RecipesFacade.recipes(random_country.name)
          binding.pry
        end

        render json: RecipeSerializer.new(recipes)
      end
    end
  end
end
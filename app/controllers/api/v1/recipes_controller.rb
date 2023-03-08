module Api
  module V1
    class RecipesController < ApplicationController
      def index
        recipes = RecipesFacade.recipes(params[:country])
        render json: RecipeSerializer.new(recipes)
      end
    end
  end
end
module Api
  module V1
    class FavoritesController < ApplicationController
      def index
        if user = User.find_by(api_key: params[:api_key])
          render json: FavoriteSerializer.new(user.favorites)
        else
          render json: {errors: 'Not a valid API key - no matching user'}, status: 404
        end
      end

      def create
        if user = User.find_by(api_key: params[:api_key])
          favorite = user.favorites.new(favorite_params)

          if favorite.save
            render json: {success: 'Favorite added successfully'}, status: 201
          end
        else
          render json: {errors: 'Not a valid API key - no matching user'}, status: 404
        end
      end

      private

      def favorite_params
        params.permit(:country, :recipe_link, :recipe_title)
      end
    end
  end
end
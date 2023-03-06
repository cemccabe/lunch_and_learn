module Api
  module V1
    class TouristSightsController < ApplicationController
      def index
        tourist_sights = TouristSightsFacade.sights(country)
        render json: TouristSightsSerializer.new(tourist_sights)
      end
    end
  end
end
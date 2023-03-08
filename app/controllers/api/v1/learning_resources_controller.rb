module Api
  module V1
    class LearningResourcesController < ApplicationController
      def index
        learning_resource = LearningResourceFacade.resources(params[:country])
        render json: LearningResourceSerializer.new(learning_resource)
      end
    end
  end
end
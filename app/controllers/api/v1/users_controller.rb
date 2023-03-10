module Api
  module V1
    class UsersController < ApplicationController
      def create
        user = User.new(user_params)
        user.create_api_key

        if user.save
          render json: UserSerializer.new(user), status: 201
        else
          render json: {errors: user.errors.full_messages.to_sentence}, status: 400
        end
      end

      private

      def user_params
        params.require(:user).permit(:name, :email)
      end
    end
  end
end
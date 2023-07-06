class PlannersController < ApplicationController
    skip_before_action :authorized, only: :create

    def create
        user = User.create!(planner_params)
        session[:user_id] = user.id
        render json: user, status: :created
    end

    def show
        user = User.find_by(id: session[:user_id])
        render json: user, status: :ok
    end

    private

    def client_params
        params.permit(:username, :password, :password_confirmation, :image_url, :bio, :commpany)
    end
end

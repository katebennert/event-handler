class PlannersController < ApplicationController
    skip_before_action :authorized, only: :create

    def create
        planner = Planner.create!(user_params)
        session[:planner_id] = planner.id
        render json: planner, status: :created
    end

    def show
        user = User.find_by(id: session[:user_id])
        render json: user, status: :ok
    end

    private

    def user_params
        params.permit(:username, :password, :password_confirmation, :image_url, :bio, :location)
    end
end

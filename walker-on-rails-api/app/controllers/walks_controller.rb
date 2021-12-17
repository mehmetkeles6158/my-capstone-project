class WalksController < ApplicationController
  # response = HTTP.get("https://developer.nps.gov/api/v1/parks?parkCode=CHOH&api_key=lreBv66OgcJgBfSE9Q8xnmFKKx05cE7qfNoDCfsf")
  # park_response = response.parse(:json)
  before_action :authenticate_user
  def index
    walks = Walk.where(user_id: current_user.id)
    render json: walks
  end

  def show
    walk = Walk.find_by(id: params[:id])
    render json: walk
  end

  def create

    walk = Walk.new(
      user_id: current_user.id,
      steps: params[:steps],
      date: params[:date]

    )

    if walk.save
      render json: walk
    else
      render json: {errors: walk.errors.full_messages}, status: :unprocessable_entity
    end

  end


end

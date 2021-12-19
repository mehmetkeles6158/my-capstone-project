class WalksController < ApplicationController
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

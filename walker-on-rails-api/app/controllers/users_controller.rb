class UsersController < ApplicationController
  # before_action :current_user
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def update
    user = User.find_by(id: current_user.id)
    user.age = params[:age] || user.age
    user.weight = params[:weight] || user.weight
    user.height = params[:height] || user.height

    if user.save
      render json: user
    else
      render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
    end
    
  end

  def index
    render json: current_user
  end

end

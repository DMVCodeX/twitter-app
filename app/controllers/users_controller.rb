class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def create
    @user = User.create(
      username: params[:username],
      email: params[:email],
    )

    if @user.valid?
      render :show
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end
end

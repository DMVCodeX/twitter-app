class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    render :index
  end

  def show
    @tweet = Tweet.find_by(id: params[:id])
    render :show
  end

  def create
    @newtweet = Tweet.create(
      user_id: params[:user_id],
      tweet: params[:tweet],
    )

    if @newtweet.valid?
      render @newtweet
    else
      render json: { errors: @newtweet.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @tweet = Tweet.find_by(id: params[:id])
    @tweet.destroy
    render json: { message: "Tweet has been deleted" }
  end
end

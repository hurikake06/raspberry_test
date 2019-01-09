class Api::RaspberryController < ApplicationController
  def create_share
    share = Share.create(user_id: params[:user_id], pet_id: params[:pet_id])
    render json:share
  end
  def count
    user = User.find(paramth[:user_id])
    user.count = user.count + 1
    user.save
    render json: user
  end
end

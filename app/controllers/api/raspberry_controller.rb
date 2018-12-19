class Api::RaspberryController < ApplicationController
  def show_user
    render json:User.find(params[:id])
  end

  def show_pet
    render json:Pet.find(params[:id])
  end

  def show_share
    render json:Share.find(params[:id])
  end

  def create_share
    share = Share.create(user_id: params[:user_id], pet_id: params[:pet_id])
    render json:share
  end
end

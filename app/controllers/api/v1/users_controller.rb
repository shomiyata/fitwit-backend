class Api::V1::UsersController < ApplicationController
#before_action :authorized, only: [:me]

  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(id: params[:id])
    render json: user
  end

end

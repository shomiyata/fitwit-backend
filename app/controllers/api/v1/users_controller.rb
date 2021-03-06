class Api::V1::UsersController < ApplicationController
#before_action :authorized, only: [:me]

  def index
    users = User.all
    render json: users
  end

  def create
    @user = User.new(username: params[:username], password:params[:password], name:params[:name])
    if @user.save
      payload = { user_id: @user.id}
      render json: {user: @user, jwt: issue_token(payload)}
    else
      render json: {message: 'could not create user'}
    end
  end


  # def show
  #   user = User.find(id: params[:id])
  #   render json: user
  # end

  def update
    # byebug
    user = User.find(params[:id])
    user.update(days_a_week: params[:daysAWeek], length_of_program: params[:programLength])
    render json: user
  end

end

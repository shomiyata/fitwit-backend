class Api::V1::ExercisesController < ApplicationController

  def create
    # byebug
    @exercise = Exercise.create(name: params[:name], description:params[:description], username:params[:username])
  end

  def index
    @exercises = Exercise.find_by(username: params[:username])
    render json: {exercises: @exercises}
  end

end

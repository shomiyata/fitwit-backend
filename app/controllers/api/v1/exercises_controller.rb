class Api::V1::ExercisesController < ApplicationController

  def create
    exercise = Exercise.create(name: params[:name], description:params[:description], username:params[:username])
  end

  def index
    username = JSON.parse(request.headers["username"])["username"]
    exercises = Exercise.where({username: username})
    render json: {exercises: exercises}
  end

end



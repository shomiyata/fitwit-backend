class Api::V1::ExercisesController < ApplicationController

  def create
    exercise = Exercise.create(name: params[:name], description:params[:description], username:params[:username])
  end

  def user_exercises
    # byebug
    user = User.find(params[:userid])
    exercises = Exercise.where({username: user.username})
    render json: {exercises: exercises}
  end

end

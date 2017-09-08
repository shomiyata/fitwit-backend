class WorkoutSession < ApplicationRecord
	belongs_to :user
	has_many :exercises, through: :workout_session_exercise
end

class Exercise < ApplicationRecord
	has_many :workout_sessions, through: :workout_session_exercise
end

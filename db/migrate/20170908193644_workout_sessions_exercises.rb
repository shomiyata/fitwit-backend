class WorkoutSessionsExercises < ActiveRecord::Migration[5.1]
  def change
  	create_table :workout_sessions_exercises do |t|
  		t.integer :workout_session_id
  		t.integer :exercise_id
  	end
  end
end

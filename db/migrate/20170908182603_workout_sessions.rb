class WorkoutSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :workout_sessions do |t|
      t.datetime :date
      t.boolean :completed
      t.integer :user_id
      t.integer :exercise_one_weight
      t.integer :exercise_two_weight
      t.integer :exercise_three_weight
      t.integer :exercise_four_weight
      t.integer :exercise_one_reps
      t.integer :exercise_two_reps
      t.integer :exercise_three_reps
      t.integer :exercise_four_reps

      t.timestamps
    end
  end
end

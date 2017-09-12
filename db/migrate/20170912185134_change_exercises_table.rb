class ChangeExercisesTable < ActiveRecord::Migration[5.1]
  def change
    add_column :exercises, :description, :string
    add_column :exercises, :username, :string
    add_column :exercises, :week, :integer
    add_column :exercises, :name, :string
  end
end

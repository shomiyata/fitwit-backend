class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :password_digest
      t.string :email
      t.string :bio
      t.integer :points
      t.integer :days_a_week
      t.integer :length_of_program

      t.timestamps
    end
  end
end

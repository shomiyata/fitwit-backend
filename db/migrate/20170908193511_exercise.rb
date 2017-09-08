class Exercise < ActiveRecord::Migration[5.1]
  def change
  	create_table :exercises do |t|
  		t.integer :api_id
  	end
  end
end

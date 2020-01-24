class Walks < ActiveRecord::Migration[6.0]
  def change
    create_table :walks do |t|
      t.integer :user_id
      t.integer :dog_id
      t.integer :walk_duration
      t.integer :poops
      t.string :comments
    end
  end
end

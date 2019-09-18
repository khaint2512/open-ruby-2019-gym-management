class CreateHealthProcesses < ActiveRecord::Migration[5.2]
  def change
    create_table :health_processes do |t|
      t.integer :user_id
      t.datetime :date
      t.float :running_distance
      t.time :running_time
      t.integer :chest_rep
      t.integer :abs_rep
      t.integer :back_rep
      t.integer :leg_rep
      t.references :user_id, foreign_key: true

      t.timestamps
    end
    add_index :health_processes, [:user_id, :created_at]
  end
end

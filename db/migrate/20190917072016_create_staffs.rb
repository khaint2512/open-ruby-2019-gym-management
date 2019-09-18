class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.integer :contract_id
      t.integer :user_id
      t.references :user_id, foreign_key: true
      t.references :contract_id, foreign_key: true

      t.timestamps
    end
    add_index :staffs, [:user_id, :contract_id, :created_at]
  end
end

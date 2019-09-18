class CreateUsersContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :users_contracts do |t|
      t.integer :user_id
      t.integer :PT_id
      t.datetime :activated_at
      t.datetime :expired_at
      t.references :user_id, foreign_key: true

      t.timestamps
    end
    add_index :users_contracts, [:user_id, :created_at]
  end
end

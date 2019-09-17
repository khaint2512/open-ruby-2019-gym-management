class CreateUsersContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :users_contracts do |t|
      t.integer :user_id
      t.integer :PT_id
      t.datetime :activated_at
      t.datetime :expired_at
      t.string :association

      t.timestamps
    end
  end
end

class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.integer :contract_id
      t.integer :user_id
      t.string :association

      t.timestamps
    end
  end
end

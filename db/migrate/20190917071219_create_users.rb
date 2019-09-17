class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :fullname
      t.integer :age
      t.datetime :birth_date
      t.integer :role
      t.string :email
      t.string :password
      t.boolean :activated
      t.string :reset_password
      t.datetime :created_at

      t.timestamps
    end
  end
end

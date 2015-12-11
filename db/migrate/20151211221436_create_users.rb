class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :user
      t.integer :id, unique:
      t.sring :password
      t.string :email

      t.timestamps
    end
    add_index :users, :id, unique: true
  end
end

class AddFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_index :users, :username, unique: true #Creates a unique index on the username column to ensure no two users have the same username.
  end
end

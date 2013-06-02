class AddPrivateTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :private_token, :string
    add_index :users, :private_token, :unique => true
  end
end

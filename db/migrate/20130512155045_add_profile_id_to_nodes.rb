class AddProfileIdToNodes < ActiveRecord::Migration
  def change
    add_column :nodes, :profile_id, :integer
    add_index :nodes, :profile_id
    remove_column :nodes, :user_id
  end
end

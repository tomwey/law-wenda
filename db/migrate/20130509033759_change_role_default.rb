class ChangeRoleDefault < ActiveRecord::Migration
  def up
    change_column :users, :role, :string, :default => User.roles[0]
  end

  def down
  end
end

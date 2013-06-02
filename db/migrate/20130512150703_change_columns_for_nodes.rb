class ChangeColumnsForNodes < ActiveRecord::Migration
  def up
    change_column :nodes, :name, :string, :null => false
    change_column :nodes, :sort, :integer, :null => false, :default => 0
    change_column :nodes, :section_id, :integer, :null => false
    change_column :sections, :sort, :integer, :default => 0
  end

  def down
  end
end

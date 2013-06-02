class AddQuestionsCountToNodes < ActiveRecord::Migration
  def change
    add_column :nodes, :questions_count, :integer, :default => 0
  end
end

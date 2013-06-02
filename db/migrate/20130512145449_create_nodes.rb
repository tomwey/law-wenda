class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :name
      t.text :summary
      t.integer :sort

      t.timestamps
    end
  end
end

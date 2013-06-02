class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.integer :sort, :default => 0
      t.text :summary

      t.timestamps
    end
  end
end

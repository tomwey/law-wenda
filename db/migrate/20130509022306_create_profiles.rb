class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :location
      t.string :practiceno
      t.string :law_firm
      t.text :description

      t.timestamps
    end
    
    add_index :profiles, :location
    add_index :profiles, :practiceno, :unique => true
  end
end

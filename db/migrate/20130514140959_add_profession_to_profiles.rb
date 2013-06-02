class AddProfessionToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :profession, :string
  end
end

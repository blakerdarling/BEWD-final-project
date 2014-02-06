class AddZipCodeToFish < ActiveRecord::Migration
  def change
    add_column :fish, :zip_code, :integer
  end
end

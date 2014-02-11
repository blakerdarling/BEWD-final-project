class AddColumnToCatches < ActiveRecord::Migration
  def change
  	add_column :catches, :species_id, :integer
  end
end

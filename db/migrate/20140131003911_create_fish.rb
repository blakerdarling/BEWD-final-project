class CreateFish < ActiveRecord::Migration
  def change
    create_table :fish do |t|
      t.datetime :date
      t.string :species
      t.string :lure
      t.decimal :weight
      t.decimal :length
      t.string :image_url
      t.text :notes

      t.timestamps
    end
  end
end

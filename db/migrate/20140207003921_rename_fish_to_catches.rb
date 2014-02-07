class RenameFishToCatches < ActiveRecord::Migration
 	def self.up
    	rename_table :fish, :catches
 	end
    def self.down
	    rename_table :catches
    end
end
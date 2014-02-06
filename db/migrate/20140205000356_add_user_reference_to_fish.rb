class AddUserReferenceToFish < ActiveRecord::Migration
  def change
    add_reference :fish, :user, index: true
  end
end

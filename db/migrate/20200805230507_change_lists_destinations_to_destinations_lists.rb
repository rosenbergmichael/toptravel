class ChangeListsDestinationsToDestinationsLists < ActiveRecord::Migration[5.2]
  def change
    drop_table :lists_destinations
    create_join_table :destinations, :lists do |t|
      t.integer :destination_id
      t.integer :list_id 
    end
  end
end

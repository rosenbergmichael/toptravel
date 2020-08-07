class RemoveDestinationsAndDestinationsLists < ActiveRecord::Migration[5.2]
  def change
    drop_table :destinations
    drop_table :destinations_lists
  end
end

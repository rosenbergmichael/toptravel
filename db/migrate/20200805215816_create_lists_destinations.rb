class CreateListsDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :lists_destinations do |t|
      t.integer :list_id
      t.integer :destination_id
    end
  end
end

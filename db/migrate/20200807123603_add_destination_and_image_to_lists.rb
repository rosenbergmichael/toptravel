class AddDestinationAndImageToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :destination, :text 
    add_column :lists, :image, :string 
  end
end

class AddIdsToItem < ActiveRecord::Migration
  def change
  	add_column :resources, :item_id, :integer
  end
end

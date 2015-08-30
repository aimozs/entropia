class Item < ActiveRecord::Migration
  def change
  	rename_column :items, :type, :itemType
  end
end

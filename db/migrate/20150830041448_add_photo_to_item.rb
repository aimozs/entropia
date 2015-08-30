class AddPhotoToItem < ActiveRecord::Migration
  def change
  	add_column :items, :linkPhoto, :string
  end
end

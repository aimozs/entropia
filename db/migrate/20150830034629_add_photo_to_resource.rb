class AddPhotoToResource < ActiveRecord::Migration
  def change
  	add_column :resources, :linkPhoto, :string
  end
end

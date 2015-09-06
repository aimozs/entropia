class RecreateItem < ActiveRecord::Migration
  def change
  	create_table :items do |t|
      t.string :name
      t.string :image
      t.string :itemType
      t.string :level
      t.float :ttValue
      t.float :marketValue
      t.integer :volume

      t.timestamps
    end
  end
end

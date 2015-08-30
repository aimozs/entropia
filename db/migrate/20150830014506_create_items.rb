class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :image
      t.string :type
      t.string :level
      t.float :ttValue
      t.float :marketValue
      t.integer :volume
      t.references :resource, index: true

      t.timestamps
    end
  end
end

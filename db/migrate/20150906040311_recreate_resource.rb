class RecreateResource < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.string :resourceType
      t.string :image
      t.float :ttValue
      t.float :marketValue

      t.timestamps
    end
  end
end

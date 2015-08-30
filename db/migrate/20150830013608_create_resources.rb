class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.string :type
      t.float :ttValue
      t.float :marketValue

      t.timestamps
    end
  end
end

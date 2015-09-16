class CreateLodes < ActiveRecord::Migration
  def change
    create_table :lodes do |t|
      t.integer :latitude
      t.integer :longitude
      t.integer :size
      t.references :resource, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

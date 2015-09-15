class CreateRecipes < ActiveRecord::Migration
  def change
  	drop_table :recipes
    create_table :recipes do |t|
      t.references :item, index: true, foreign_key: true
      t.references :resource, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

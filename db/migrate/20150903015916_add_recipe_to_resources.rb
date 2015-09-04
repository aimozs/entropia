class AddRecipeToResources < ActiveRecord::Migration
  def change
    add_reference :resources, :recipe, index: true, foreign_key: true
  end
end

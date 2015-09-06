class CreateResourceItemJoinTable < ActiveRecord::Migration
  def change
  	create_table :items_resources, :id => false do |t|
      t.references :resource
      t.references :item
    end
  end
end

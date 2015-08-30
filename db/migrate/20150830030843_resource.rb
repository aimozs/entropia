class Resource < ActiveRecord::Migration
  def change
  	rename_column :resources, :type, :resourceType
  end
end

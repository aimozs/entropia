class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :firstName
      t.string :lastName
      t.string :linkPhoto
      t.string :linkGoogle
      t.date :dob
      t.references :user, index: true

      t.timestamps
    end
  end
end

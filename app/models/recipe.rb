class Recipe < ActiveRecord::Base
  belongs_to :item
  belongs_to :resource
  validates :item_id, presence: true
  validates :resource_id, presence: true
end

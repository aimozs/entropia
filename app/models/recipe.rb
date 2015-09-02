class Recipe < ActiveRecord::Base
  belongs_to :item
  belongs_to :resource
end

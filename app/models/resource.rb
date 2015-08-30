class Resource < ActiveRecord::Base
	# belong_to :item
	validates :name, uniqueness: true
end

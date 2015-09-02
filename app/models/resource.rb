class Resource < ActiveRecord::Base
	# belong_to :item
	validates_presence_of :name
	validates :name, uniqueness: true
	has_many :items, through: :recipes
	has_many :recipes
end

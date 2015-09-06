class Resource < ActiveRecord::Base
	validates_presence_of :name
	validates :name, uniqueness: true
	mount_uploader :image, PictureUploader
	has_many :recipes
  	has_many :items, through: :recipes
	
end

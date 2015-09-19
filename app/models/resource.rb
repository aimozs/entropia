class Resource < ActiveRecord::Base
	validates_presence_of :name, :resourceType
	validates :name, uniqueness: true
	mount_uploader :image, PictureUploader
	has_many :lodes
	has_many :recipes
  	has_many :items, through: :recipes
	
end

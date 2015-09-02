class Item < ActiveRecord::Base
  validates_presence_of :name
  has_many :resources, through: :recipes
  has_many :recipes
  mount_uploader :image, PictureUploader
end

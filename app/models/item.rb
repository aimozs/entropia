class Item < ActiveRecord::Base
  validates_presence_of :name, uniqueness: true
  has_many :recipes
  has_many :resources, through: :recipes
  mount_uploader :image, PictureUploader
end

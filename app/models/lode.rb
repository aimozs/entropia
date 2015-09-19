class Lode < ActiveRecord::Base
	validates_presence_of :resource, :latitude, :longitude
  belongs_to :resource
end

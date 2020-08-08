class Profile < ApplicationRecord
#	validates_presence_of :name, :surname
    extend FriendlyId
    friendly_id :name,:use => [:slugged, :history]
	has_one :user
	has_many :queries
	mount_uploader :image, ImageUploader
end

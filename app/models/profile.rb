class Profile < ApplicationRecord
#	validates_presence_of :name, :surname
	has_one :user
	has_many :queries
	mount_uploader :image, ImageUploader
end

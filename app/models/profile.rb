class Profile < ApplicationRecord
#	validates_presence_of :name, :surname
    extend FriendlyId
 
	has_one :user
	has_many :queries
	mount_uploader :image, ImageUploader

	friendly_id :profile_name, use: :slugged

 	include ProfileParameterize
	include NewFriendlyName
end

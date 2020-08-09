class Profile < ApplicationRecord
#	validates_presence_of :name, :surname
    extend FriendlyId
    friendly_id :name,:use => [:slugged, :history]
	has_one :user
	has_many :queries
	mount_uploader :image, ImageUploader

def should_generate_new_friendly_id?
 name_changed?
end
end

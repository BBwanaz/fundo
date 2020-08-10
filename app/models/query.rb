class Query < ApplicationRecord
	extend FriendlyId
	validates_presence_of :image
	validates_presence_of :profile

	enum status:{active: 0, accepted: 1, completed: 2}
	
	belongs_to :subject
	belongs_to :profile
	
	mount_uploader :image, ImageUploader
    friendly_id :subject_link, use: :slugged

    include SubjectParameterize
    include GenNewFriendly
end

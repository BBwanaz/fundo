class Query < ApplicationRecord
	extend FriendlyId

	enum status:{active: 0, accepted: 1, completed: 2}
	belongs_to :subject
	belongs_to :profile
	validates_presence_of :profile
	mount_uploader :image, ImageUploader
    friendly_id :subject_id, use: :slugged

    include SubjectParameterize
    include GenNewFriendly
end

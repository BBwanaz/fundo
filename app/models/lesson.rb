class Lesson < ApplicationRecord
    extend FriendlyId

  belongs_to :subject
  mount_uploader :video, VideoUploader
  friendly_id :subject_link, use: :slugged

  include SubjectParameterize
  include GenNewFriendly
end

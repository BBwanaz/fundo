class Lesson < ApplicationRecord
  belongs_to :subject
  mount_uploader :video, VideoUploader
end

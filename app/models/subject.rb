class Subject < ApplicationRecord
    extend FriendlyId
	validates_presence_of :title
	has_many :queries
	has_many :lessons
    friendly_id :title, use: :slugged
end

class Subject < ApplicationRecord
	validates_presence_of :title
	has_many :queries
	has_many :lessons
end

class Subject < ApplicationRecord
	validates_presence_of :title
	has_many :queries
end

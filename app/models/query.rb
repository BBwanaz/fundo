class Query < ApplicationRecord
	belongs_to :subject
	belongs_to :profile
	validates_presence_of :profile
end

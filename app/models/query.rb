class Query < ApplicationRecord
	enum status:{active: 0, accepted: 1, completed: 2}
	belongs_to :subject
	belongs_to :profile
	validates_presence_of :profile
end

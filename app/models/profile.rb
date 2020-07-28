class Profile < ApplicationRecord
#	validates_presence_of :name, :surname
	has_one :user
end

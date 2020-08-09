module GenNewFriendly
	extend ActiveSupport::Concern

included do
   def should_generate_new_friendly_id?
     subject_id_changed?
   end
end

end
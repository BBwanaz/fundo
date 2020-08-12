module NewFriendlyName
	extend ActiveSupport::Concern

	included do
		def should_generate_new_friendly_id?
 		name_changed?
		end
	end
end
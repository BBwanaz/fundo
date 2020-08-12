module ProfileParameterize
 extend ActiveSupport::Concern

 included do 
	def profile_name
		"#{name}-" + "#{id}".parameterize
	end
 end
end
module ProfileBuilder
	extend ActiveSupport::Concern

included  do
   def profile
    super || build_profile
  end	
end
end
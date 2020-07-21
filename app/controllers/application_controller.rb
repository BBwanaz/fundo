class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :set_copyright

def configure_permitted_parameters
	devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :surname])
end

def set_copyright
	@copyright = FundoViewTool::Renderer.copyright 'Brandon Bwanakocha', 'All Rights Reserved'
 end 
end



module FundoViewTool
	class Renderer
		def self.copyright name, msg
			"&copy; #{Time.now.year} | <b>#{name}</b>,  #{msg}".html_safe
		end
	end
end 
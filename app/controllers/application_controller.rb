class ApplicationController < ActionController::Base
	before_action :set_copyright

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
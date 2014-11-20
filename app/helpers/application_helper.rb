module ApplicationHelper
	def button (text, location)
		link_to( text, location, :class => " btn btn-default btn-xs button")
	end
end

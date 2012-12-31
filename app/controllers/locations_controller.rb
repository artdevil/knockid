class LocationsController < InheritedResources::Base
	before_filter :authenticate_user!

	def index
		@locations = current_user.locations
	end

	def new
		@location = current_user.locations.new
	end
end

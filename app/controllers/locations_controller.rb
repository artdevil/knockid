class LocationsController < InheritedResources::Base
	before_filter :authenticate_user!

	def index
		@locations = current_user.locations
	end

	def new
		if current_user.locations.length != 2
			@location = current_user.locations.new
		else
			flash[:error] = "you only can have 2 location"
			redirect_to locations_path
		end
	end

	def create
		@location = current_user.locations.new(params[:location])
		if @location.save
			flash[:success] = "your location has been created"
			redirect_to locations_path
		else
			flash[:error] = "please review your input"
			render 'new'
		end
	end
end

class MapsController < ApplicationController
	def call_maps
		@location_tag = current_user.locations.find(params[:id])
  	respond_to do |format|
  		format.html
  		format.js
  	end
	end
end

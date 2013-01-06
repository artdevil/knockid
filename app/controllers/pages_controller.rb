class PagesController < ApplicationController
	before_filter :authenticate_user!
  def home 
  end

  def about
  end

  def maps
  	@user = current_user
  end

  def status_align
  	@location_tag = current_user.locations.find(params[:id])
  	respond_to do |format|
  		format.html
  		format.js
  	end
  end
end

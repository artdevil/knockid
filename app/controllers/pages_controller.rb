class PagesController < ApplicationController
	before_filter :authenticate_user!
  def home 
  end

  def about
  end

  def maps
  	@user = current_user
  end
end

class FriendsController < ApplicationController
  def index
  	@friends = current_user.friends
  	if request.headers['X-PJAX']
    	render :layout => false
  	end
  end

  def show
  end
end

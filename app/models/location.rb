class Location < ActiveRecord::Base
  attr_accessible :address, :confirm, :home_avatar, :latitude, :longnitude, :user_id, :verification
end

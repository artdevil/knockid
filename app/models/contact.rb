class Contact < ActiveRecord::Base
  attr_accessible :location_id, :number, :type
end

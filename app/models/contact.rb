class Contact < ActiveRecord::Base
	belongs_to :locations
  attr_accessible :location_id, :number, :type
  validates :number, :presence => true
  validates_associated :locations
end

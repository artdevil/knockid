class Location < ActiveRecord::Base
	belongs_to :users
	has_many :contacts, :validate => true

	accepts_nested_attributes_for :contacts, :reject_if => :all_blank, :allow_destroy => true

  attr_accessible :address, :confirm, :home_avatar, :latitude, :longitude, :user_id, :verification, :contacts_attributes
  validates :address, :presence => true
  mount_uploader :home_avatar, HomeAvatarUploader
  mount_uploader :verification, LocationVerificationUploader
end

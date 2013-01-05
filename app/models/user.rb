class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  include Amistad::FriendModel
  has_many :locations
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :firstname, :lastname, :birthday, :avatar, :identity_image
  # attr_accessible :title, :body

  # upload
  mount_uploader :avatar, AvatarUploader
  mount_uploader :identity_image, IdentityImageUploader
  
  validates :email, :username, :firstname, :presence => true ,:on => :update
  validates :email, :username, :firstname, :password, :presence => true, :on => :create
  validates :password, :confirmation => true, :on => :create
end

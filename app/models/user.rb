class User < ActiveRecord::Base
  has_many :albums
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable, :validatable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  attr_accessible :avatar, :name

  # Paperclip
  has_attached_file :avatar, :styles => { :large => "600x600>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/system/missing.jpg"
  validates_format_of :avatar, :with => /.+.jpg|jpeg|png|bmp$/i, :allow_blank => true
end

class Artist < ActiveRecord::Base
  has_many :albums
  
  attr_accessible :avatar, :name
  
  validates :name, :presence => true

  has_attached_file :avatar, :styles => { :large => "600x600>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/system/missing.jpg"
  validates_format_of :avatar, :with => /.+.jpg|jpeg|png|bmp$/i, :allow_blank => true
end

class Album < ActiveRecord::Base
  belongs_to :artist
  belongs_to :user

  attr_accessible :coverart, :name, :released, :user_id, :artist_id
  
  has_attached_file :coverart, :styles => { :large => "600x600>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/system/missing.jpg"
  validates_format_of :coverart, :with => /.+.jpg|jpeg|png|bmp$/i, :allow_blank => true
  
  validates :name, :presence => true
  validates_uniqueness_of :name, :scope => [:user_id, :artist_id]
  
  validates :artist_id, :presence => true
  validates :user_id, :presence => true
end

class Album < ActiveRecord::Base
  belongs_to :artist
  belongs_to :user
  
  validates :name, :presence => true
  validates_uniqueness_of :name, :scope => [:user_id, :artist_id]
  validates :artist_id, :presence => true
  validates :user_id, :presence => true
end

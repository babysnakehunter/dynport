class Album < ActiveRecord::Base
  belongs_to :artist
  belongs_to :user
  
  validates :name, :presence => true, :uniqueness => true
  validates :artist_id, :presence => true
  validates :user_id, :presence => true
end

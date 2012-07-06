class AddAttachmentCoverartToAlbums < ActiveRecord::Migration
  def change
    change_table :albums do |t|
      add_attachment :albums, :coverart
    end
  end
end

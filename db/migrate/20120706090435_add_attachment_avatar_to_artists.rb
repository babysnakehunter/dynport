class AddAttachmentAvatarToArtists < ActiveRecord::Migration
  def change
    change_table :artists do |t|
      add_attachment :artists, :avatar
    end
  end
end

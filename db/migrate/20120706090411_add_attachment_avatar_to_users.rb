class AddAttachmentAvatarToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      add_attachment :users, :avatar
    end
  end
end

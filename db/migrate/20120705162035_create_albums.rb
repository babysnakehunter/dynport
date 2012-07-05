class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.date :released
      
      t.integer :artist_id
      t.integer :user_id

      t.timestamps
    end
  end
end

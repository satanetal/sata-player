class CreateTracksToPlaylists < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.text :title
      t.text :author
      t.text :album
      t.integer :year
      t.text :format
      t.text :file_link
      t.integer :track_time
      t.text :type
      t.timestamps
    end
 
    create_table :playlists do |t|
      t.integer :profile_id
      t.timestamps
    end
 
    create_table :tracks_playlists, id: false do |t|
      t.belongs_to :playlist, index: true
      t.belongs_to :track, index: true
    end
  end
end

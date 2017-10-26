class CreateTracksToPlaylists < ActiveRecord::Migration[5.1]
  def change
    create_table :playlists_tracks, id: false do |t|
      t.belongs_to :playlist, index: true
      t.belongs_to :track, index: true
    end
  end
end

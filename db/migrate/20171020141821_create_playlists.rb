class CreatePlaylists < ActiveRecord::Migration[5.1]
  def change
    create_table :playlists do |t|
      t.references :profile
      t.string		:name    
      t.integer    :tracks_count
      t.string     :source
      t.belongs_to :user
      t.integer		:full_time
      t.timestamps
    end
  end
end

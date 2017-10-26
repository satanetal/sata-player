class CreateTracks < ActiveRecord::Migration[5.1]
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
	      t.integer :file_size
	      t.timestamps
	    end
	   end
end

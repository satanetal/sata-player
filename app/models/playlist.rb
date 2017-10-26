class Playlist < ApplicationRecord
	has_and_belongs_to_many :tracks
	has_one :profile
	accepts_nested_attributes_for :tracks , :profiles

  scope :from_dropbox,  { where(source: "dropbox") }

	def self.load_from_dropbox db_key=nil, folder_name=""
		snoop = SnoopDoggDropbox.new db_key, folder_name
		pl_data = snoop.find_play_lists

		pl_data.each_with_index{|data, ind| 
			puts "#{ind + 1} / #{pl_data.count} Start creating #{ data[:name]}"
			t_list = data[:tracks]
			play_list = create(data.except(:tracks))
			play_list.tracks << t_list.map{|t| Track.find_or_create_by(t)}
			puts "End creating #{ data[:name]}"
		}
	end
end

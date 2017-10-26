class Track < ApplicationRecord
	has_and_belongs_to_many :playlists
	validates :title, uniqueness: true
	validates :file_link, uniqueness: true
	validates :file_size, uniqueness: true
end

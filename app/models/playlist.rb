class Playlist < ApplicationRecord
	has_and_belongs_to_many :track
	has_one :profile
end

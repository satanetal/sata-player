require 'carrierwave/orm/activerecord'

class Profile < ApplicationRecord
	belongs_to :user
	has_many :playlists
	mount_uploader :avatar, AvatarUploader
end

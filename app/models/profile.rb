require 'carrierwave/orm/activerecord'

class Profile < ApplicationRecord
	attr_accessor :avatar
	belongs_to :user
	has_many :playlists
	mount_uploader :avatar, AvatarUploader
end

require 'carrierwave/orm/activerecord'

class Profile < ApplicationRecord
  attr_accessor :avatar
  belongs_to :user
  has_many :playlists
  mount_uploader :avatar, AvatarUploader
  
  def has_dropbox?
    unless @profile.dropbox_auth_token.nil?
      return false
    end
  end

end

class AddDropboxAuthTokenToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :dropbox_auth_token, :string
  end
end

class SnoopDoggDropbox
  def self.db_auth_url
    @@authenticator = DropboxApi::Authenticator.new('nazu7wtht0lkbwf', 'k6le6hnq9ul5uuy')
    @@authenticator.authorize_url # => "https://www.dropbox.com/oauth2/authorize?client_id=nazu7wtht0lkbwf&response_type=code"
  end

  def self.auth_token(request_token)
    db_auth_url()
    @@auth_bearer = @@authenticator.get_token(request_token) 
    @@auth_bearer.token
  end

  # def self.db_key
  #   "CI-5wXSXYGcAAAAAAAAAdAx5_Em3qwlgwJvEN7ti279LvDkcVHzDMxkFQs2q5UIt"
  #   # "p58-ohGXe9cAAAAAAAAN3ZjdhvEarZYfAldxSLQajuCDhseWJiG2KPw0Ubbv_DXE"
  # end

  def initialize auth_token=nil, root_name=""
    @auth_token = auth_token
    @client = DropboxApi::Client.new(@auth_token)
    @root_name = root_name
  end


  def find_play_lists
    @playlists = []
    snoop(@root_name, 1)
    @playlists
  end
  
private
  def find_mp3 #Check current folder for mp3's
    @current_entries.select {|hsh| hsh[".tag"] == "file" && hsh["name"].match(/.mp3/)}
  end

  def find_folders #Check current folder for folders inside
    @current_entries.select {|hsh| hsh[".tag"] == "folder"} 
  end
  
  def create_playlists playlist_name, mp3_list
    tracks = mp3_list.map {|hsh| {
                title:          hsh["name"].split(" - ").last,
                author:         hsh["name"].split(" - ").first,
                file_size:      hsh["size"],
                file_link:      hsh["path_display"]
                }}
    playlist = {
                name:           playlist_name,
                tracks:         tracks,
                tracks_count:   tracks.count,
                source:         'dropbox'
              }
    @playlists << playlist
  end

  def snoop folder_name, lvl
      return  if lvl > 3
    
      content = @client.list_folder folder_name # /indians
      @current_entries = content.entries.map(&:to_hash)
      mp3_list = find_mp3
      unless mp3_list.empty?
        f_name = folder_name.split('/').last
        f_name =  f_name.nil? ? "root" : f_name 
        create_playlists f_name, mp3_list
      end
      folders_list = find_folders
      folders_list.each {|elem| snoop(elem["path_display"], lvl + 1)}
  end
end

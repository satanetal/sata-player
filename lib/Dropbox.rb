class SnoopDogDropbox
	def initialize root_name='/'
	  @client = DropboxApi::Client.new("CI-5wXSXYGcAAAAAAAAAdAx5_Em3qwlgwJvEN7ti279LvDkcVHzDMxkFQs2q5UIt")
	  @root_name = root_name
	  @playlists = []
	end

#
def find_play_lists
  snoop(@root_name)
end

def snoop name
	result = client.list_folder name
	if ....
		@playlists << play_list
	end
end

@data={"entries"=>
	[
		{".tag"=>"file", "name"=>"01 A Tribe Called Red - Electric Pow Wow Drum.mp3", "path_lower"=>"/indians/01 a tribe called red - electric pow wow drum.mp3", "path_display"=>"/Indians/01 A Tribe Called Red - Electric Pow Wow Drum.mp3", "parent_shared_folder_id"=>"240470446", "id"=>"id:X3e74Hamos4AAAAAAAAACw", "client_modified"=>"2013-03-03T20:23:23Z", "server_modified"=>"2013-03-03T21:38:17Z", "rev"=>"10e5549ae", "size"=>9878698, "sharing_info"=>{"read_only"=>false, "parent_shared_folder_id"=>"240470446", "modified_by"=>"dbid:AACGkTmvvFraOSmJo4VP9EdNw9GjGd1bhU0"}, "content_hash"=>"d7c3425705910ec350d331fe9080711dfc476f544058fa54a01a737abe58dc8c"}, {".tag"=>"file", "name"=>"02 A Tribe Called Red - Look At This.mp3", "path_lower"=>"/indians/02 a tribe called red - look at this.mp3", "path_display"=>"/Indians/02 A Tribe Called Red - Look At This.mp3", "parent_shared_folder_id"=>"240470446", "id"=>"id:X3e74Hamos4AAAAAAAAACg", "client_modified"=>"2013-03-03T20:23:54Z", "server_modified"=>"2013-03-03T21:38:17Z", "rev"=>"20e5549ae", "size"=>15181268, "sharing_info"=>{"read_only"=>false, "parent_shared_folder_id"=>"240470446", "modified_by"=>"dbid:AACGkTmvvFraOSmJo4VP9EdNw9GjGd1bhU0"}, "content_hash"=>"a19545449418fbb860f92002d92c50eb11dad3430276e1bef118129d7ff428ef"}, {".tag"=>"file", "name"=>"03 Nothern Cree - Red Skin Girl (A Tribe Called Red Remix).mp3", "path_lower"=>"/indians/03 nothern cree - red skin girl (a tribe called red remix).mp3", "path_display"=>"/Indians/03 Nothern Cree - Red Skin Girl (A Tribe Called Red Remix).mp3", "parent_shared_folder_id"=>"240470446", "id"=>"id:X3e74Hamos4AAAAAAAAACQ", "client_modified"=>"2013-03-03T20:24:22Z", "server_modified"=>"2013-03-03T21:38:17Z", "rev"=>"30e5549ae", "size"=>15133164, "sharing_info"=>{"read_only"=>false, "parent_shared_folder_id"=>"240470446", "modified_by"=>"dbid:AACGkTmvvFraOSmJo4VP9EdNw9GjGd1bhU0"}, "content_hash"=>"52423ae3c85f2dd6a0b4ca690d4905276dfaf22cd89bef941952d29f3e65d339"}, {".tag"=>"file", "name"=>"04 A Tribe Called Red - Woodcarver.mp3", "path_lower"=>"/indians/04 a tribe called red - woodcarver.mp3", "path_display"=>"/Indians/04 A Tribe Called Red - Woodcarver.mp3", "parent_shared_folder_id"=>"240470446", "id"=>"id:X3e74Hamos4AAAAAAAAACA", "client_modified"=>"2013-03-03T20:24:50Z", "server_modified"=>"2013-03-03T21:38:17Z", "rev"=>"40e5549ae", "size"=>14890038, "sharing_info"=>{"read_only"=>false, "parent_shared_folder_id"=>"240470446", "modified_by"=>"dbid:AACGkTmvvFraOSmJo4VP9EdNw9GjGd1bhU0"}, "content_hash"=>"3579fae8afe79c6db0d081d0ddf0085f1c5b496f27d028c6f6c2acf7de96ce3c"}, {".tag"=>"file", "name"=>"05 A Tribe Called Red - Good To Go.mp3", "path_lower"=>"/indians/05 a tribe called red - good to go.mp3", "path_display"=>"/Indians/05 A Tribe Called Red - Good To Go.mp3", "parent_shared_folder_id"=>"240470446", "id"=>"id:X3e74Hamos4AAAAAAAAABw", "client_modified"=>"2013-03-03T20:25:27Z", "server_modified"=>"2013-03-03T21:38:17Z", "rev"=>"50e5549ae", "size"=>11707919, "sharing_info"=>{"read_only"=>false, "parent_shared_folder_id"=>"240470446", "modified_by"=>"dbid:AACGkTmvvFraOSmJo4VP9EdNw9GjGd1bhU0"}, "content_hash"=>"785b9a2ddf82b7a882dc4fd2ddf842e57d471e9d40c99cfc78d3542a160ac54f"}, {".tag"=>"file", "name"=>"06 Munchi -Shottas (A Tribe Called Red SocaCore remix).mp3", "path_lower"=>"/indians/06 munchi -shottas (a tribe called red socacore remix).mp3", "path_display"=>"/Indians/06 Munchi -Shottas (A Tribe Called Red SocaCore remix).mp3", "parent_shared_folder_id"=>"240470446", "id"=>"id:X3e74Hamos4AAAAAAAAABg", "client_modified"=>"2013-03-03T20:26:05Z", "server_modified"=>"2013-03-03T21:38:17Z", "rev"=>"60e5549ae", "size"=>16412257, "sharing_info"=>{"read_only"=>false, "parent_shared_folder_id"=>"240470446", "modified_by"=>"dbid:AACGkTmvvFraOSmJo4VP9EdNw9GjGd1bhU0"}, "content_hash"=>"7fb370101562eff90bbb7f89f1b2821ef16b75627bf9315eb57bdc51549d3de4"}, {".tag"=>"file", "name"=>"07 A Tribe Called Red - Native puppy love .mp3", "path_lower"=>"/indians/07 a tribe called red - native puppy love .mp3", "path_display"=>"/Indians/07 A Tribe Called Red - Native puppy love .mp3", "parent_shared_folder_id"=>"240470446", "id"=>"id:X3e74Hamos4AAAAAAAAABQ", "client_modified"=>"2013-03-03T20:26:24Z", "server_modified"=>"2013-03-03T21:38:17Z", "rev"=>"70e5549ae", "size"=>10050294, "sharing_info"=>{"read_only"=>false, "parent_shared_folder_id"=>"240470446", "modified_by"=>"dbid:AACGkTmvvFraOSmJo4VP9EdNw9GjGd1bhU0"}, "content_hash"=>"8e0323fe270ca61cc2b8aa3b1c2b5bb96aa7b64b961399db255075dda7810275"}, {".tag"=>"file", "name"=>"08 A Tribe Called Red - MoombahWow.mp3", "path_lower"=>"/indians/08 a tribe called red - moombahwow.mp3", "path_display"=>"/Indians/08 A Tribe Called Red - MoombahWow.mp3", "parent_shared_folder_id"=>"240470446", "id"=>"id:X3e74Hamos4AAAAAAAAABA", "client_modified"=>"2013-03-03T20:26:49Z", "server_modified"=>"2013-03-03T21:38:17Z", "rev"=>"80e5549ae", "size"=>12809761, "sharing_info"=>{"read_only"=>false, "parent_shared_folder_id"=>"240470446", "modified_by"=>"dbid:AACGkTmvvFraOSmJo4VP9EdNw9GjGd1bhU0"}, "content_hash"=>"a5d464811eb2db67ad4de27e5ef591ca5c87b7c5a77476d3471e210b700d2f70"}, {".tag"=>"file", "name"=>"09 A Tribe Called Red - Intertribal n1.mp3", "path_lower"=>"/indians/09 a tribe called red - intertribal n1.mp3", "path_display"=>"/Indians/09 A Tribe Called Red - Intertribal n1.mp3", "parent_shared_folder_id"=>"240470446", "id"=>"id:X3e74Hamos4AAAAAAAAAAw", "client_modified"=>"2013-03-03T20:27:09Z", "server_modified"=>"2013-03-03T21:38:17Z", "rev"=>"90e5549ae", "size"=>10627385, "sharing_info"=>{"read_only"=>false, "parent_shared_folder_id"=>"240470446", "modified_by"=>"dbid:AACGkTmvvFraOSmJo4VP9EdNw9GjGd1bhU0"}, "content_hash"=>"6e03bb93b8a2e35bd81b3d6345b8dde07e8979d9e002a24cc2ef184855dfa11e"}, {".tag"=>"file", "name"=>"10 A Tribe Called Red - General Generations.mp3", "path_lower"=>"/indians/10 a tribe called red - general generations.mp3", "path_display"=>"/Indians/10 A Tribe Called Red - General Generations.mp3", "parent_shared_folder_id"=>"240470446", "id"=>"id:X3e74Hamos4AAAAAAAAAAg", "client_modified"=>"2013-03-03T20:27:27Z", "server_modified"=>"2013-03-03T21:38:17Z", "rev"=>"a0e5549ae", "size"=>10459351, "sharing_info"=>{"read_only"=>false, "parent_shared_folder_id"=>"240470446", "modified_by"=>"dbid:AACGkTmvvFraOSmJo4VP9EdNw9GjGd1bhU0"}, "content_hash"=>"85804874c88b86d862edfbb2ef9384b0418f01a4053d2da3cb0b4553f5055b67"}], "cursor"=>"AAHKGTBgeryQnfqfV-SeJDvO0a0m58sI-yHEvBoK0fdK2VcBydIzZNZ61_eOa7GIJZfL78vYdp2y530U2Rln7tNOlguj0a6f-vz6uGSUKtqPNU2BruE0YCucJ8wV9ZIaIj5bAXkkUwIdN5tQ2N21NOzjRV7hfLJLqeQ98InTgH7ovI-dHdWoPbNQj847Nu_KeIMwr7DmuPDlHpVr6X3GALBa", "has_more"=>false}>

#Описание метода Снуп
# Если в папке есть мп3
# 	Создать плейлист с именем
#  	
# Если в папке есть папки
# 	В цикле вызвать Snoop для каждой
#
#
#
#
#
hash_structure
PlayLists = [PlayList, PlayList, PlayList,PlayList ...] 
 PlayList
 {
 	name:
    count:
    minutes:
    tracks: [{
 	 name:
 	 size:
 	 path:}, ...]
 } 	

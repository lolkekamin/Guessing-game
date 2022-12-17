extends CenterContainer

const port = 97845

func _ready():
	get_tree().connect("network_peer_connected", self, "_player_connected")
	get_tree().connect("network_peer_disconnected", self, "_player_disconnected")
	get_tree().connect("connected_to_server", self, "_connected_ok")
	get_tree().connect("connection_failed", self, "_connected_fail")
	get_tree().connect("server_disconnected", self, "_server_disconnected")

var player_info = {}
var my_info = { name = "Johnson Magenta", favorite_color = Color8(255, 0, 255) }

func _player_connected(id):
	rpc_id(id, "register_player", my_info)

func _player_disconnected(id):
	player_info.erase(id) 

func _connected_ok():
	pass 

func _server_disconnected():
	pass 

func _connected_fail():
	pass 

remote func register_player(info):

	var id = get_tree().get_rpc_sender_id()

	player_info[id] = info


func _on_Button_pressed():
	var ip = $GridContainer/TextEdit.text
	var peer = NetworkedMultiplayerENet.new()
	peer.create_client(ip, port)
	get_tree().network_peer = peer
	


func _on_Button2_pressed():
	var peer = NetworkedMultiplayerENet.new()
	peer.create_server(port, 5)
	get_tree().network_peer = peer

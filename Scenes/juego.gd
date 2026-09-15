extends Node

@onready var player = $Jugador/Player
@onready var player_b = $Jugador/PlayerB

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_boton_player_b_pressed():
	player.visible = false
	player_b.visible = true

extends Node

@onready var player = $Jugador/Player
@onready var player_b = $Jugador/PlayerB

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func cambiar_jugador(playera,playerb):
	var posicion = playera.global_position
	playera.visible = false
	playera.process_mode = Node.PROCESS_MODE_DISABLED
	playera.get_node("CollisionShape2D").disabled = true
	playera.get_node("Camera2D").enabled = false
	
	playerb.global_position = posicion
	playerb.visible = true
	playerb.process_mode = Node.PROCESS_MODE_INHERIT
	playerb.get_node("CollisionShape2D").disabled = false
	playerb.get_node("Camera2D").enabled = true

func _on_boton_player_b_pressed():
	cambiar_jugador(player, player_b)
	
	$MenuJugador/Panel/Opciones/BotonPlayer.visible = true
	$MenuJugador/Panel/Opciones/BotonPlayerB.visible = false

func _on_boton_player_pressed():
	cambiar_jugador(player_b, player)

	$MenuJugador/Panel/Opciones/BotonPlayer.visible = false
	$MenuJugador/Panel/Opciones/BotonPlayerB.visible = true

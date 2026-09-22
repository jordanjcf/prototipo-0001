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
	var posicion = player.global_position
	
	player.visible = false
	player.process_mode = Node.PROCESS_MODE_DISABLED
	$Jugador/Player/CollisionShape2D.disabled = true
	$Jugador/Player/Camera2D.enabled = false

	player_b.global_position = posicion
	player_b.visible = true
	player_b.process_mode = Node.PROCESS_MODE_INHERIT
	$Jugador/PlayerB/CollisionShape2D.disabled = false
	$Jugador/PlayerB/Camera2D.enabled = true
	
	$MenuJugador/Panel/Opciones/BotonPlayer.visible = true
	$MenuJugador/Panel/Opciones/BotonPlayerB.visible = false

func _on_boton_player_pressed():
	var posicion = player_b.global_position
	
	player_b.visible = false
	player_b.process_mode = Node.PROCESS_MODE_DISABLED
	$Jugador/PlayerB/CollisionShape2D.disabled = true

	player.global_position = posicion
	player.visible = true
	player.process_mode = Node.PROCESS_MODE_INHERIT
	$Jugador/Player/CollisionShape2D.disabled = false
	$Jugador/Player/Camera2D.enabled = true
	$Jugador/PlayerB/Camera2D.enabled = false
	
	$MenuJugador/Panel/Opciones/BotonPlayer.visible = false
	$MenuJugador/Panel/Opciones/BotonPlayerB.visible = true

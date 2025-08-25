extends Node2D

const SPEED = 5.0

func _ready() -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	if Input.is_action_pressed('player_left'):
		self.position.x -= SPEED
	if Input.is_action_pressed('player_right'):
		self.position.x += SPEED
	if Input.is_action_pressed('player_up'):
		self.position.y -= SPEED
	if Input.is_action_pressed('player_down'):
		self.position.y += SPEED

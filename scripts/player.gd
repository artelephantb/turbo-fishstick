extends Node2D

@export var speed = 5.0

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	# Input
	if Input.is_action_pressed('player_left'):
		self.position.x -= speed
	if Input.is_action_pressed('player_right'):
		self.position.x += speed
	if Input.is_action_pressed('player_up'):
		self.position.y -= speed
	if Input.is_action_pressed('player_down'):
		self.position.y += speed

extends Node2D

@export var tile_layer: TileMapLayer
@export var seed = 100

@export_category('Structure')
@export var srtructure: Array
@export var srtructure_scale: Vector2i = Vector2i(4, 4)

func _ready() -> void:
	for height in range(srtructure_scale.y):
		for length in range(srtructure_scale.x):
			if length + height * srtructure_scale.x >= len(srtructure) or srtructure[length + height * srtructure_scale.x] == -1:
				tile_layer.erase_cell(Vector2i(length, height))
			else:
				tile_layer.set_cell(Vector2i(length, height), srtructure[length + height * srtructure_scale.x], Vector2i(0, 0))

func _process(delta: float) -> void:
	pass

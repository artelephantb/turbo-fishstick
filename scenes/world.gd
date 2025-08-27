extends Node2D

@export var tile_layer: TileMapLayer
@export var seed = 100

func place_structure(structure: Array, position: Vector2i):
	for height in range(len(structure)):
		for length in range(len(structure[height])):
			if structure[height][length] == 0:
				tile_layer.erase_cell(Vector2i(length, height) + position)
			else:
				tile_layer.set_cell(Vector2i(length, height), structure[height][length] - 1, Vector2i(0, 0))

func _ready() -> void:
	place_structure([[0, 1, 0], [2, 3, 2], [0, 1, 0]], Vector2i(0, 0))

func _process(delta: float) -> void:
	pass

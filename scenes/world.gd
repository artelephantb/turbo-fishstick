extends Node2D

@export var tile_layer: TileMapLayer
@export var set_seed = 100

const STRUCTURE_TOPS = [[[3, 4, 3], [2, 1, 1], [1, 1, 2]]]

const STRUCTURE_GROUNDS = [[[1, 2, 2], [2, 1, 1], [1, 1, 2]], [[1, 1, 2], [2, 1, 2], [2, 2, 1]], [[2, 1, 2], [1, 1, 1], [2, 2, 2]]]

func place_structure(structure: Array, location: Vector2i):
	for height in range(len(structure)):
		for length in range(len(structure[height])):
			if structure[height][length] == 0:
				tile_layer.erase_cell(Vector2i(length, height) + location)
			else:
				tile_layer.set_cell(Vector2i(length, height) + location, structure[height][length] - 1, Vector2i(0, 0))

func _ready() -> void:
	for chunk_x in range(15):
		for chunk_y in range(15):
			if chunk_y <= 0:
				place_structure(STRUCTURE_TOPS[(set_seed * chunk_x + chunk_y) % len(STRUCTURE_TOPS)], Vector2i(chunk_x * 3, chunk_y * 3))
			if chunk_y > 0:
				place_structure(STRUCTURE_GROUNDS[(set_seed * chunk_x + chunk_y) % len(STRUCTURE_GROUNDS)], Vector2i(chunk_x * 3, chunk_y * 3))

func _process(delta: float) -> void:
	pass

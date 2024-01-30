extends Node

@export var mower:CharacterBody2D
@export var mowingRange:Area2D
@onready var grassMap:TileMap = $"/root/Level-1/GrassMap"

func _on_mowing_range_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	grassMap.erase_cell(0, grassMap.get_coords_for_body_rid(body_rid))
	$/root/GameManager.add_point.emit()

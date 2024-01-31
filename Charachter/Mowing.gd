extends Node

@export var mower:CharacterBody2D
@export var mowingRange:Area2D
@onready var grassMap:TileMap = $"/root/Level-1/GrassMap"
@onready var gm:GameManager = $/root/GameManager

func _on_mowing_range_body_shape_entered(body_rid, _body, _body_shape_index, _local_shape_index):
	grassMap.erase_cell(0, grassMap.get_coords_for_body_rid(body_rid))
	$/root/GameManager.add_points.emit(1*gm.point_multiplier)

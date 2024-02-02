extends Node

signal add_points(point_amount:int)
signal update_points
signal reset_map

@export var points:int = 0
@export var point_multiplier:float = 1
var squares_removed:int = 0
var active_level:int = 0 # green - 0, red - 1, blue - 2, gold - 3 

func _ready():
	add_points.connect(add_points_to_score)
#UwU - made by Kuba G.

func add_points_to_score(points_to_add:int):
	points += points_to_add
	update_points.emit()
	squares_removed += 1
	if squares_removed >= 40000:
		reset_map.emit()
		squares_removed = 0

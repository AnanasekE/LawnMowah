extends Node

signal add_point

@export var points:int = 0

func _ready():
	add_point.connect(add_point_to_score)

func add_point_to_score():
	points += 1
